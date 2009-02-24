reduction actions
blockNoArgs: nodes

	^ (RBBlockNode
		body: nodes second)
		left: nodes first start;
		right: nodes third stop