reduction actions
primitiveModule: nodes
	^OrderedCollection with: (Pragma keyword: #primitive:module: 
									 arguments: (Array with: nodes second value withoutQuoting asSymbol
														with: nodes fourth value withoutQuoting asSymbol)) 
					  with: (Array with: nodes fourth value withoutQuoting asSymbol 
								    with: nodes second value withoutQuoting asSymbol 
								    with: 0 with: 0)
					  with: 117

	