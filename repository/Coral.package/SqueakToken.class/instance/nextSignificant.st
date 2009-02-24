accessing
nextSignificant

	| nextSign |
	nextSign := self next.
	[nextSign isInsignificant] 
		whileTrue: [nextSign := nextSign next.
					nextSign ifNil:[^nil]].
	^nextSign