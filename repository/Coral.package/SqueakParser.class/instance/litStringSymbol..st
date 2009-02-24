reduction actions
litStringSymbol: nodes

	| s |
	s := nodes second value.
	^ (RBLiteralNode
		literalToken: nodes second
		value: ((s copyFrom: 2 to: s size - 1)
				copyReplaceAll: '''''' with: '''') asSymbol) firstToken: nodes first; yourself