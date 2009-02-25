reduction actions
declareClassMethod: nodes

	| rbDeclare |
	rbDeclare :=  RBMethodDeclarationNode new
		selectorParts: nodes third first
		arguments: nodes third last;
		body: nodes fifth body;
		classSide: true;
		classNodeVar: nodes first.
	nodes fifth pragmas ifNotNil: [rbDeclare pragmas: nodes fifth pragmas ].
	^rbDeclare source: rbDeclare sourceText asString; yourself