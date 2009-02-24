reduction actions
methodPragma: nodes
	^RBMethodNode new
		selectorParts: nodes first first
		arguments: nodes first last;
		body: nodes third;
		pragmas:nodes second