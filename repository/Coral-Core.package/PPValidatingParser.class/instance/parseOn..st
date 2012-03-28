parsing
parseOn: aStream
	| position result |
	position := aStream position.
	result := parser parseOn: aStream.
	(result isPetitFailure not and: [ block value: result ])
		ifTrue: [ ^ result ].
	aStream position: position.
	^ PPFailure message: 'Invalid declaration' at: aStream position