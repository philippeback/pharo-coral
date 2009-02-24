reduction actions
pragma: nodes
	"self haltIf: [nodes second first isKindOf: Pragma]."
	"| pragmaNode |
	pragmaNode := RBPragmasNode withPragma: nodes second first spec: nodes second second.
	nodes second third ifNotNil: [pragmaNode primitiveNumber: nodes second third].
	^pragmaNode"
	
	| rbPragma |
	rbPragma := RBPragmaNode pragma: nodes second first 
								spec: nodes second second 
								start: nodes first start 
								stop: nodes third stop 
								firstToken: nodes first
								lastToken: nodes last.
	nodes second third ifNotNil: [rbPragma primitiveNumber: nodes second third].
	^OrderedCollection with: rbPragma