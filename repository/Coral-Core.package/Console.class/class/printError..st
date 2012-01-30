output
printError: anObject

	(OSProcess thisOSProcess stdErr
			converter: (TextConverter newForEncoding: 'UTF-8'))
		nextPutAll: anObject asString