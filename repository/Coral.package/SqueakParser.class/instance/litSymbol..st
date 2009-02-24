reduction actions
litSymbol: nodes

	^ (RBLiteralNode
		literalToken: nodes second
		value: nodes second value asSymbol) firstToken: nodes first; yourself