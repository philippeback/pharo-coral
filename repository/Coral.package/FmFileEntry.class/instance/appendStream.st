accessing-stream
appendStream
	self exists
		ifFalse: [^ self writeStream].
	^ (FileStream fileNamed: self pathName) setToEnd