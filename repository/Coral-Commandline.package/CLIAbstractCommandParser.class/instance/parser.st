parsing
parser
	"A parser that will recognize this command at the beginning of a stream of arguments"

	^ parser ifNil: [ | cmd |
		cmd := (PPPredicateObjectParser anyOf: (self aliases copyWithFirst: self name)) token.
		(cmd , self optionsParser , self parametersParser , self subcommandParser) end
			==> [ :nodes |
				self
					captureOptions: nodes second
					parameters: nodes third
					subcommand: nodes fourth ] ]