parsing
parseStream: aStream startingAt: anInteger in: class
	| parser |
	parser := self on: aStream.
	parser setStartingState: anInteger.
	parser classParseIn: class.
	^parser parse