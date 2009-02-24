error handling
findReduceActionForState: state

	1 to: self errorTokenId do: [:i |
		| action |
		action := self actionForState: state and: i.
		(action bitAnd: self actionMask) = self reduceAction 
			ifTrue: [^action bitShift: -2]].
	^0