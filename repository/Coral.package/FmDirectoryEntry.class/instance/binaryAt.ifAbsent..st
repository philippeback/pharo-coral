dictionary-like
binaryAt: localFileName ifAbsent: block 
	^ [self binaryAt: localFileName]
		on: FileDoesNotExistException
		do: [:ex | block value]