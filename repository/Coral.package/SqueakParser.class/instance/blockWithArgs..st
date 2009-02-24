reduction actions
blockWithArgs: nodes

	^ (RBBlockNode
		arguments: nodes second
		body: nodes fourth)
		left: nodes first start;
		right: nodes fifth stop;
		firstToken: nodes first;
		lastToken: nodes last;
		yourself