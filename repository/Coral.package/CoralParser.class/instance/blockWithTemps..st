reduction actions
blockWithTemps: nodes

	^ (RBBlockNode
		arguments: nodes second
		body: (RBSequenceNode
			temporaries: nodes fourth
			statements: nodes sixth))
		left: nodes first start;
		right: nodes seventh stop