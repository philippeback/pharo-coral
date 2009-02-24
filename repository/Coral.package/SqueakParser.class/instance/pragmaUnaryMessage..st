reduction actions
pragmaUnaryMessage: nodes

	^OrderedCollection with:(Pragma keyword: nodes first first first value asSymbol arguments: nodes first second)
					  with: nil
					  with: nil
					  with: nodes first first first
					  with: nodes first first first
	
	
	