parsing
parser
	"A parser that will recognize this command at the beginning of a stream of arguments"

	^ parser
		ifNil: [ | cmd |
			cmd := self aliases inject: self name asParser into: [ :p :each | p / each asParser ].
			cmd := PPPredicateObjectParser matching: cmd token end message: 'Command ' , self name , ' expected'.
			cmd := cmd , self optionsParser , self parametersParser , self subcommandParser.
			parser := cmd end ==> [ :nodes |
				self
					captureOptions: nodes second
					parameters: nodes third
					subcommand: nodes fourth ] ]