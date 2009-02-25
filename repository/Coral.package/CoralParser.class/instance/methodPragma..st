reduction actions
methodPragma: nodes

	^RBScriptMethodDeclarationNode new
		body: nodes second;
		pragmas:nodes first