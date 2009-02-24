token handling
comment
	| value |
	value := outputStream contents.
	comments add: {value. start}.
	previousToken :=  SqueakToken 
		value: value 
		start: start 
		id: #comment 
		prevToken: previousToken.
	self resetScanner.
	stream atEnd ifFalse: [^self scanForToken]
		ifTrue:[^self scannerError]
