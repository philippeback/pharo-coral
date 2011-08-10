accessing
parser
	"A parser that will recognize this command at the beginning of a stream of arguments"
	
	^ parser ifNil: [ | cmd |
		cmd := self aliases
			inject: self name asParser
			into: [ :p :each | p / each asParser ].
		cmd := PPPredicateObjectParser
					matching: cmd token end
					message: 'Command ' , self name , ' expected'.
		self options ifNotEmptyDo: [ :opts |
			cmd := cmd , (PPChoiceParser withAll: opts) star ].
		self parameters ifNotEmptyDo: [ :params |
			cmd := cmd , (PPSequenceParser withAll: params) ].
		 self subcommands ifNotEmptyDo: [ :subs |
			cmd := cmd , (PPChoiceParser withAll: subs) ].
		parser := cmd end
	]