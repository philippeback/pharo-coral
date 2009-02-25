reduction actions
litArray: nodes

	^ RBLiteralNode
		literalToken: (SmaCCToken
			value: (String new: (nodes fourth stop - nodes second start + 1))
			start: nodes second start)
		value: nodes third contents