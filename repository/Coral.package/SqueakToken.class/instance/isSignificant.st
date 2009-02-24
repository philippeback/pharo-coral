testing
isSignificant
	^(self isComment or:[self isWhitespace] or: [self value = '|'] or: [self value = '.'] or: [self isWhitespace]) not