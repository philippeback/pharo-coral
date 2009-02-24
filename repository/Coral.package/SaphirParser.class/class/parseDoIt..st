parsing
parseDoIt: stringOrStream

	| sequence |
	sequence := self
		parseStream: stringOrStream readStream
		startingAt: self startingStateForSequenceScript.
	"^ (RBDoItNode body: sequence)
		source: stringOrStream contents"