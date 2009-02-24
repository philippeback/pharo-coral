accessing
drive
	self onUnix ifTrue: [^drive _ nil].
	drive ifNil: [drive _ self parent ifNotNil: [self parent drive]].
	^drive