dictionary-like
at: localFileName put: contents 
	self assureExistence.
	self setContentsOf: (self asFileDirectory forceNewFileNamed: localFileName) to: contents.
	^contents