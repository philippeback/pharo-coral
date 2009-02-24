private
actionForCurrentToken

	| ids action |
	ids := currentToken id.
	1 to: ids size do: [:i | 
		action := self actionFor: (ids at: i).
		(action bitAnd: self actionMask) = self errorAction ifFalse: [^ action].

		"Convert negative number to binarySymbol"
		(self isNegativeNumberId:(ids at: i)) ifTrue: [
			^self negativeNumberToBinaryString].

		"Ignore repeating periods"
		(self isEmptyStatementId: (ids at: i)) ifTrue: [
			^ self ignoreEmptyStatement].

	].
	^ self errorAction