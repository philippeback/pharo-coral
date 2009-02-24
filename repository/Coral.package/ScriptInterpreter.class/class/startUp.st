system startup
startUp

	"Smalltalk addToStartUpList: self"
	| script |
	script := ((SmalltalkImage current getSystemAttribute: 2) ifNil:['']) convertFromSystemString.
	script isEmpty ifFalse:[
		[ScriptInterpreter parseAndInterpret: (FileStream readOnlyFileNamed: script)] 
			on: Exception
			do: [ :ex | 
				Smalltalk
					logError: ex printString
					inContext: thisContext
					to: 'SqueakDebug.log'.
				Console printNl: ex].
		Console printNl: ''.
		Smalltalk quitPrimitive]