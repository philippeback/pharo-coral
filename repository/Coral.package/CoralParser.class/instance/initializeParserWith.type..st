accessing
initializeParserWith: aStream type: aSymbol

	source := aStream.
	self scanner: (RBScanner
				perform: aSymbol
				with: aStream
				with: self errorBlock)