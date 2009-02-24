reduction actions
returnAdd: nodes

	^ nodes first copyWith: (RBReturnNode
		return: nodes third start
		value: nodes fourth)