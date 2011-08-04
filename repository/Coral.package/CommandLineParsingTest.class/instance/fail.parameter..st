parsing
fail: entry parameter: parameter
	| result |
	result := parameter asParser end parse: entry.
	self
		assert: result isPetitFailure
		description: 'Able to parse ' , entry printString.
	^ result