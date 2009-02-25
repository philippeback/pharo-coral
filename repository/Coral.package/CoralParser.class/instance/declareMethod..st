reduction actions
declareMethod: nodes

	| rbDeclare |
	rbDeclare :=  RBMethodDeclarationNode new
		selectorParts: nodes second first
		arguments: nodes second last;
		body: nodes fourth body;
		classSide: false;
		classNodeVar: nodes first.
	nodes fourth pragmas ifNotNil: [rbDeclare pragmas: nodes fourth pragmas ].
	^rbDeclare source:  rbDeclare sourceText asString; yourself