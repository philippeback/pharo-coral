reduction actions
blockNoArgs: nodes

	^ (RBBlockNode
		body: nodes second)
		left: nodes first start;
		right: nodes third stop;
		firstToken: nodes first;
		lastToken: nodes last;
		yourself