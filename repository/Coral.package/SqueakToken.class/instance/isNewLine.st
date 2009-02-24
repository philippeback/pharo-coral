testing
isNewLine
	
	^self isWhitespace and:[(self value indexOf: Character cr) > 0 or: [(self value indexOf: Character lf) > 0]]