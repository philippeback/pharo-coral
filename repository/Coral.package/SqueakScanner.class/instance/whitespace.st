token handling
whitespace
	| value  |
	value := outputStream contents.
	previousToken := (SqueakToken 
		value: value 
		start: start 
		id: #whitespace 
		prevToken: previousToken).
	^super whitespace. "eats the whitespace"
