parsing
parseString: aString
	^ self parser parseOn: (Character space split: aString)