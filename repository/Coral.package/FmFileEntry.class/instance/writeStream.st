accessing-stream
writeStream
	self parent exists ifFalse: [self parent assureExistence].
	^FileStream forceNewFileNamed: self pathName