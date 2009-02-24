accessing-stream
readStream
	^ [FileStream readOnlyFileNamed: self pathName]
		on: FileDoesNotExistException
		do: [:ex | 
			self assureExistence.
			ex retry]