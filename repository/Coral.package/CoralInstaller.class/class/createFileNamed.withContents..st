file creation
createFileNamed: aFileName withContents: aString
	| file |
	file := (FSFilesystem onDisk entryAt: aFileName) reference.
	file writeStreamDo: [ :str |
		str truncate.
		str nextPutAll: aString withUnixLineEndings.
		str close ].
	^ file

