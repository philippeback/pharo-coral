as yet unclassified
parseScript: stringOrStream
	
	| aStream |
	aStream := stringOrStream readStream.
	aStream atEnd ifTrue: [^#()].
	^self
		parseStream: aStream
		startingAt: self startingStateForScript