activation
activate
	
	Console initHistory.
	Console prompt: '> '.
	
	({''. self class commandName} includes: SmalltalkImage current documentPath) 
		ifTrue: [ self runConsole ]
		ifFalse: [ self runScript ]