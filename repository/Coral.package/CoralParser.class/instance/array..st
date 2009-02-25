reduction actions
array: nodes

	^ RBArrayNode
		leftBrace: nodes first start
		rightBrace: nodes third stop
		statements: nodes second