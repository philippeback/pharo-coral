file creation
createFileNamed: aFileName withContents: aString
	| file |
	file := FSFilesystem disk referenceTo: aFileName.
	file writeStreamDo: [ :io |
		io truncate; nextPutAll: aString withUnixLineEndings ].
	^ file