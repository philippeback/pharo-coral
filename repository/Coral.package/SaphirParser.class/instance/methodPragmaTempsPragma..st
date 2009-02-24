reduction actions
methodPragmaTempsPragma: nodes

	^ RBScriptMethodDeclarationNode new 
		body: (RBSequenceNode
			temporaries: nodes second
			statements: nodes fourth);
		pragmas: (nodes first addAll: nodes third; yourself)