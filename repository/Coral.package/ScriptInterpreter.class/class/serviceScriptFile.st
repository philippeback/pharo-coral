file list services
serviceScriptFile
	
	^ SimpleServiceEntry 
		provider: self 
		label: 'execute a script'
		selector: #fileExecuteScript:
		description: 'execute a script'
		buttonLabel: 'Do It'