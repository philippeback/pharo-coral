parsing
parse: entry parameter: parameter
	| result |
	result := parameter asParser end parse: entry.
	self
		deny: result isPetitFailure
		description: 'Unable to parse ' , entry printString
		resumable: true.
	^ result