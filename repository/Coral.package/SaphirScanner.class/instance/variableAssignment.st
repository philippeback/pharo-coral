token handling
variableAssignment

	outputStream skip: -2.
	stream skip: -2.
	matchActions _ {self nameId}.
	self createTokenFor: outputStream contents.
