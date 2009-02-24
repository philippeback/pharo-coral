accessing
parseScript: aString

	| node |
	node := self parseScript.
	self atEnd ifFalse: [self parserError: 'Unknown input at end'].
	^ node