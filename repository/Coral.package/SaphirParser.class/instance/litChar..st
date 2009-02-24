reduction actions
litChar: nodes

	^ RBLiteralNode
		literalToken: nodes first
		value: (nodes first value at: 2)