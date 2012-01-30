output
print: anObject

	(OSProcess thisOSProcess stdOut
			converter: (TextConverter newForEncoding: 'UTF-8'))
		nextPutAll: anObject asString