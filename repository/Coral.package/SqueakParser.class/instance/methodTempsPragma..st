reduction actions
methodTempsPragma: nodes

	| sequence |
	sequence := (RBSequenceNode
		temporaries: nodes second first
		statements: nodes fourth)
		firstToken: nodes second second; 
		yourself.
	nodes fourth isEmpty ifFalse: [
			sequence lastToken: nodes second third ].
	^ RBMethodNode new
		selectorParts: nodes first first
		arguments: nodes first last;
		body: sequence;
		pragmas: nodes third