dictionary-like
at: localFileName 
	^self contentsOf: (self asFileDirectory readOnlyFileNamed: localFileName)