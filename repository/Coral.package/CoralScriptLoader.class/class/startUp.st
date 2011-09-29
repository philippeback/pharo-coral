initialize-release
startUp
	"Smalltalk addToStartUpList: self"
	
	Console initHistory.
	Console prompt: '> '.	
		
	((SmalltalkImage current documentPath) = '') 
		ifTrue: [ self runConsole ]
		ifFalse: [ self runScript ]
	
