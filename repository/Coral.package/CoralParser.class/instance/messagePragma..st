reduction actions
messagePragma: nodes
	"self haltIf: [(nodes first first isKindOf: Pragma) not]."
	^nodes first
