reduction actions
sequenceWithTemps: nodes

	^ RBSequenceNode
		temporaries: nodes first
		statements: nodes second