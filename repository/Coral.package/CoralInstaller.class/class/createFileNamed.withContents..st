file creation
createFileNamed: aFileName withContents: aString
	| str |
	str := FSFilesystem onDisk writeStreamOn: aFileName.
	str truncate.
	str nextPutAll: aString withUnixLineEndings.
	str close

