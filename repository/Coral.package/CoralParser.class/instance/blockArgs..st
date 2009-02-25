reduction actions
blockArgs: nodes

	^ (RBBlockNode
		arguments: nodes second
		body: (RBSequenceNode statements: #()))
		left: nodes first start;
		right: nodes third stop