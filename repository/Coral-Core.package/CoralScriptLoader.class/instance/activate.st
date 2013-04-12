activation
activate
	
	Console initHistory.
	Console prompt: '> '.
	
	(commandLine hasFileWithExtension: '.coral') 
		ifTrue: [ self runConsole ]
		ifFalse: [ self runScript ]