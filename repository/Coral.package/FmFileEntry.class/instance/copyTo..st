actions-file
copyTo: aFileEntryOrString
	| targetEntry |
	targetEntry := aFileEntryOrString asFileEntry.
	targetEntry isDirectory ifTrue: [targetEntry := targetEntry / self name].
	
	FileDirectory default copyFile: self readStream binary toFile: targetEntry writeStream binary