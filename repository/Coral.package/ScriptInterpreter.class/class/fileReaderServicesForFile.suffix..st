file list services
fileReaderServicesForFile: fullName suffix: suffix
	
	^ (suffix = 'sct') | (suffix = 'sff') | (suffix = 'coral')
		ifTrue:[{self serviceScriptFile}]
		ifFalse:[#()]