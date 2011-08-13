script examples
scriptSynchronizeSecondFolderWithFirst
	"CoralInstaller generateScript: #scriptSynchronizeSecondFolderWithFirst"

	^ '"This script takes two paths as parameters. They should be two folders. This script will synchronize the
second folder with the first.
NB: Can be improve, this example just add the files which does not exist in the folder 2"

[ Object < #TempCoralClass ]

TempCoralClass class>>synchronizeFolder1: folder1 folder2: folder2
[
	| entries1 baseNames2 filesToCreate |
	
	entries1 := folder1 children.
	baseNames2 := folder2 children collect: [ :each | each basename ].
	filesToCreate := entries1 reject: [ :each |  baseNames2 includes: each basename ].
	
	filesToCreate do: [ :each | 
		each isFile 
			ifTrue: [ 
				| readStream |
				readStream := each readStream.
				(folder2 / (each basename)) writeStream nextPutAll: (readStream contents); close.
				readStream close
			]
			ifFalse: [ (folder2 / (each basename)) createDirectory. self synchronizeFolder1: each folder2: (folder2 / (each basename)) ]
	].
]

[
	| args fs folder1 folder2 |
	
	args := CoralScriptWriting getAllArguments.
	(args size = 3) ifFalse: [ Console<<(''Use: '', args first, '' path1 path2''). ^ self ].
	
	fs := FSDiskFilesystem currentClass createDefault.
	folder1 := fs referenceTo: (args at:2).
	folder2 := fs referenceTo: (args at:3).
	
	(folder1 exists & folder2 exists) ifFalse: [ Console printError: ''Error: The two folders should exist.''. ^ self ].
	
	TempCoralClass synchronizeFolder1: folder1 folder2: folder2.
	Console<< (args first, '' done.'').
]	
'