reduction actions
pragmas: nodes
	"nodes first addPragma: nodes third first withSpec: nodes third second.
	nodes third third ifNotNil: [nodes first primitiveNumber: nodes third third].
	^nodes first"
	
	| rbPragma |
	rbPragma := RBPragmaNode pragma: nodes third first spec: nodes third second start: nodes second start stop: nodes fourth stop.
	nodes third third ifNotNil: [rbPragma primitiveNumber: nodes third third].
	nodes first add: rbPragma.
	^nodes first
	