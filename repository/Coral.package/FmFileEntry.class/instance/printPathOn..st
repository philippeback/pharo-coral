printing
printPathOn: aStream 
	self drive
		ifNotNilDo: [:d | aStream nextPutAll: d].
	aStream nextPutAll: FileDirectory slash.
	self pathComponents
		do: [:each | aStream nextPutAll: each]
		separatedBy: [aStream nextPutAll: FileDirectory slash]