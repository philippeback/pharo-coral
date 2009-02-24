reduction actions
methodPragmaTempsPragma: nodes

	| sequence |
	sequence := (RBSequenceNode
		temporaries: nodes third first
		statements: nodes fifth) 
		firstToken: nodes third second; 
		yourself.
	nodes fifth isEmpty ifFalse: [
		sequence lastToken: nodes third third ].
	^ RBMethodNode new 
		selectorParts: nodes first first
		arguments: nodes first last;
		body: sequence;
		pragmas: (nodes second addAll: nodes fourth; yourself)