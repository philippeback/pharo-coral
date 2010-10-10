script examples
scriptCreationOfFolderAndFiles
	^ '"This script takes one parameter: a path. It will create a folder named CoralGenerated at the path.
If this folder exists, it is deleted first. In CoralGenerated, a few folders and a file are created."

[
	| fs folder |

	fs := FSDiskFilesystem currentClass createDefault.
	folder := CoralScriptWriting getAllArgumentsButScriptName at:1 ifAbsent: [ String empty ].
	
	folder isEmpty 
		ifTrue: [ Console<<(''Use: '', CoralScriptWriting getScriptName, '' path'') ]
		ifFalse: [ 
			| ref |

			ref := fs referenceTo: folder.
			ref exists
				ifFalse: [ Console printError: ''The path should exist'' ]
				ifTrue: [
					| stream |
					(ref / ''CoralGenerated'') deleteAll; createDirectory.
					((ref / ''CoralGenerated'') / ''a'') createDirectory.
					((ref / ''CoralGenerated'') / ''b'') createDirectory.
					(((ref / ''CoralGenerated'') / ''b'') / ''c'') createDirectory.
					stream := ((((ref / ''CoralGenerated'') / ''b'') / ''c'') / ''coral.txt'') writeStream.
					stream nextPutAll: ''FileGenerated with Coral''.
					stream close.
					Console<<(CoralScriptWriting getScriptName, '' done.'')
				]
		]
]	
'