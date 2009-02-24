dictionary-like
binaryAt: localFileName 
	^self contentsOf: (self asFileDirectory readOnlyFileNamed: localFileName) binary