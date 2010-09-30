file creation
createFileNamed: aFileName withContents: aString
	| str |
	str := FSUnixFilesystem new writeStreamOn: aFileName.
	str nextPutAll: aString withUnixLineEndings.
	str close

