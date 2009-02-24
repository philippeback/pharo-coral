parsing
parseDoIt: stringOrStream

	| sequence |
	sequence _ self
		parseStream: stringOrStream readStream
		startingAt: self startingStateForSequence.
	^ (RBDoItNode body: sequence)
		source: stringOrStream contents