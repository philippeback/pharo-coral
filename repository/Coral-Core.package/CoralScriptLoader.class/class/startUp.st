initialize-release
startUp
	"Smalltalk addToStartUpList: self"
	
	Smalltalk addDeferredStartupAction: [
		Console initHistory.
		Console prompt: (Ansi fg: 4) , '> ' , (Ansi sgrReset).	
		
		((SmalltalkImage current documentPath) = '') 
			ifTrue: [ self runConsole ]
			ifFalse: [ self runScript ] ]