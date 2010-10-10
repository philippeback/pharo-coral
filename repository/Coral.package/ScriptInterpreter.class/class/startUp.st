old
startUp

	"Smalltalk addToStartUpList: self"
	| script |
	self halt.
	script := ((SmalltalkImage current getSystemAttribute: 2) ifNil:['']) convertFromSystemString.
	script isEmpty ifFalse:[
		[ScriptInterpreter parse: (FileStream readOnlyFileNamed: script)] 
			on: Exception
			do: [ :ex | 
				(ex isKindOf: InMidstOfFileinNotification) 
					ifTrue:[ ex resume: false ]
					ifFalse: [
				Smalltalk
					logError: ex printString
					inContext: thisContext
					to: 'CoralDebug.log'.
				Console printNl: ex printString]].
		Console printNl: ''.
		Smalltalk quitPrimitive]