reduction actions
litString: nodes

	| s |
	s _ nodes first value.
	^ RBLiteralNode
		literalToken: nodes first
		value: ((s copyFrom: 2 to: s size - 1)
				copyReplaceAll: '''''' with: '''')