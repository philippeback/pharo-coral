reduction actions
litArray: nodes

	| litToken |
	litToken := (SqueakToken
			value: (String new: (nodes fourth stop - nodes second start + 1))
			start: nodes second start).
	litToken previous: nodes first previous.
	litToken next: nodes last next.
	^ (RBLiteralNode
		literalToken: litToken
		value: nodes third contents) 
			firstToken: nodes first; 
			lastToken: nodes last; 
			yourself