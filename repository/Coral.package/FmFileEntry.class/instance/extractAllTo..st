archive operations
extractAllTo: aFileEntryOrString 
	| dir |
	dir := aFileEntryOrString asDirectoryEntry asFileDirectory.
	Utilities
		informUserDuring: [:bar | self archive
				extractAllTo: dir
				informing: bar
				overwrite: true]