reduction actions
methodTempsPragma: nodes

	^ RBScriptMethodDeclarationNode new
		body: (RBSequenceNode
			temporaries: nodes first
			statements: nodes third);
		pragmas: nodes second