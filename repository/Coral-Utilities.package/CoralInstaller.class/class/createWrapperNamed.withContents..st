file creation
createWrapperNamed: aString withContents: contentString
	| script |
	script := self createFileNamed: aString withContents: contentString.
	OSProcess command: 'chmod u+x "' , script pathString , '"'