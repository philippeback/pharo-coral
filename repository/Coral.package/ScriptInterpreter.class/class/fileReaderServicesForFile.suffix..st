file list services
fileReaderServicesForFile: fullName suffix: suffix
	
	^ (suffix = 'cst') | (suffix = 'coral')
		ifTrue:[{self serviceScriptFile}]
		ifFalse:[#()]