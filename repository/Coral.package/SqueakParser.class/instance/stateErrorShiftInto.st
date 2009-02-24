error handling
stateErrorShiftInto

	stateStack size to: 1
		by: -1
		do: 
			[:i | 
			| action |
			action := self actionForState: (stateStack at: i) and: self errorTokenId.
			(action bitAnd: self actionMask) = self reduceAction 
				ifTrue:[self reduce:(action bitShift: -2).
						^self stateErrorShiftInto].
			(action bitAnd: self actionMask) = self shiftAction 
				ifTrue: [^ action bitShift: -2].
			stateStack removeLast].
	^ 0