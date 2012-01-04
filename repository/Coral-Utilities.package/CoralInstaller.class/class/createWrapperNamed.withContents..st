file creation
createWrapperNamed: aString withContents: contentString
	| script |
	script := self createFileNamed: aString withContents: contentString.
	self giveExecutionRightToFileNamed:  script pathString
	