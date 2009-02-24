actions-directory
copyTo: aDirectoryEntryOrString 
	| toDir |
	toDir := aDirectoryEntryOrString asDirectoryEntry assureExistence.

	self
		filesDo: [:file | file copyTo: (toDir / file name)].
	
	self
		directoriesDo: [:dir | 
			toDir := toDir pathName / dir name.
			dir copyTo: toDir]