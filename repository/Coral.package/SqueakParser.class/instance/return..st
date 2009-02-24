reduction actions
return: nodes

	^ {(RBReturnNode
		return: nodes first start
		value: nodes second) firstToken: nodes first; yourself}