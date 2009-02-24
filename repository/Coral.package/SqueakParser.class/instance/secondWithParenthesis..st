reduction actions
secondWithParenthesis: nodes

	nodes second addParenthesis: (nodes first start to: nodes last stop).
	nodes second firstToken: nodes first.
	nodes second lastToken: nodes last.
	^nodes second