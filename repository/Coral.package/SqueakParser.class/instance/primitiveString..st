reduction actions
primitiveString: nodes

	^OrderedCollection with: (Pragma keyword: #primitive: 
									 arguments: (Array with: nodes second value withoutQuoting asSymbol)) 
					   with: (Array with: nil 
									with: nodes second value withoutQuoting asSymbol 
									with: 0 with: 0)
					   with: 117
					   with: nodes first
					   with: nodes second