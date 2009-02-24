dictionary-like
removeKey: localFileName ifAbsent: failBlock
	^self asFileDirectory deleteFileNamed: localFileName ifAbsent: failBlock