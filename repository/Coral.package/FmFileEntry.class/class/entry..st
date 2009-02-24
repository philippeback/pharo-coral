instance creation
entry: aFileEntry
	| inst |
	inst := aFileEntry isDirectory ifTrue: [FmDirectoryEntry new] ifFalse: [FmFileEntry new].
	inst name: aFileEntry name.
	inst initValuesFrom: aFileEntry.
	^inst