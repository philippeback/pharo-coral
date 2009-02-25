private
ignoreEmptyStatement
	
	currentToken _ nil.
	self getNextToken.
	^ self actionForCurrentToken