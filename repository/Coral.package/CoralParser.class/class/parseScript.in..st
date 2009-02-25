parsing
parseScript: stringOrStream in: class
	
	| aStream |
	aStream := stringOrStream readStream.
	aStream atEnd ifTrue: [^#()].
	^self
		parseStream: aStream
		startingAt: self startingStateForSequenceScript in: class