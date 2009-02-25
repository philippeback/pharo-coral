reduction actions
pragmaKeyWordMessage: nodes
	| arguments keyword |
	keyword := String new.
	arguments := (nodes first second collect: [:each | each value]).
	nodes first first do: [:each | keyword := keyword, each value].
	^OrderedCollection with:(Pragma keyword: keyword asSymbol arguments: arguments)
					  with: nil
					  with: nil
	
	
	