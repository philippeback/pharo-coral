reduction actions
blockWithTemps: nodes

	^ (RBBlockNode
		arguments: nodes second
		body: ((RBSequenceNode
			temporaries: nodes fourth
			statements: nodes sixth) firstToken: nodes third))
		left: nodes first start;
		right: nodes seventh stop;
		firstToken: nodes first;
		lastToken: nodes last;
		yourself