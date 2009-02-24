file list services
fileReaderServicesForFile: fullName suffix: suffix
	
	^ (suffix = 'sct') | (suffix = 'sff') | (suffix = 'saphir')
		ifTrue:[{self serviceScriptFile}]
		ifFalse:[#()]