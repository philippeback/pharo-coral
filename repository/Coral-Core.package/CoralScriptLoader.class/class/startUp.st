initialize-release
startUp
	"Smalltalk addToStartUpList: self"
	
	Smalltalk addDeferredStartupAction: [
		Console initHistory.
		Console prompt: '> '.
		
		((SmalltalkImage current documentPath) = '') 
			ifTrue: [ self runConsole ]
			ifFalse: [ self runScript ] ]