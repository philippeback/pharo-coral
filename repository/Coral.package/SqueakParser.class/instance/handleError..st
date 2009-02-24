error handling
handleError: anInteger 

	errorToken isNil ifTrue: [errorToken := currentToken].
	self hasErrorHandler not ifTrue: [self reportError: anInteger].
	self findErrorHandlerIfNoneUseErrorNumber: anInteger