initialize-release
startUp
	"Smalltalk addToStartUpList: self"
	
	Console initHistory.
	Console prompt: '> '.	
		
	((SmalltalkImage current getSystemAttribute: 2) = '') 
		ifTrue: [ self runConsole ]
		ifFalse: [ self runScript ]
	
