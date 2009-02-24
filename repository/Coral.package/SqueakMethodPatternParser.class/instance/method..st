reduction actions
method: nodes

	^RBMethodNode new
		selectorParts: nodes first first arguments: nodes first second; body: (RBSequenceNode statements: #())
	
	