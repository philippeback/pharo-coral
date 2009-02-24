archive operations
writeArchiveTo: aFileEntryOrString 
	Utilities
		informUserDuring: [:bar | 
			bar value: ('Creating archive of {1} to: {2}' translated format: {self pathName. aFileEntryOrString}).
			self archive writeTo: aFileEntryOrString asFileEntry writeStream]