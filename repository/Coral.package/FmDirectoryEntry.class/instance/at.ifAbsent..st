dictionary-like
at: localFileName ifAbsent: block 
	^ [self at: localFileName]
		on: FileDoesNotExistException
		do: [:ex | block value]