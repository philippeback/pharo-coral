error handling
findErrorHandlerIfNoneUseErrorNumber: anInteger

	| state reduceEntry items reduceIndex |
	state := self stateErrorShiftInto.
	state = 0 
		ifFalse:[reduceIndex := (self findReduceActionForState: state).
				stateStack addLast: state.
			     reduceEntry := self reduceTable at: reduceIndex.
			     items := OrderedCollection new: (reduceEntry at: 2).
			     self performReduceMethod: (reduceEntry at: 3) with: items].
	self reportError: anInteger
	