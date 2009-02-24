actions-pipe
pipe: filterBlock to: aFileEntryOrString 
	| nextEntry inStream outStream |
	nextEntry _ aFileEntryOrString asFileEntry.
	[inStream := self readStream.
	outStream := nextEntry writeStream.
	filterBlock value: inStream value: outStream]
		ensure: [inStream close.
			outStream close].
	^nextEntry
