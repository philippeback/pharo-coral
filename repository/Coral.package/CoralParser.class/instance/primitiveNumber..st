reduction actions
primitiveNumber: nodes
	^OrderedCollection with: (Pragma keyword: #primitive: arguments: (Array with: nodes second value asInteger)) 
					  with: nil
					  with: nodes second value asInteger
	