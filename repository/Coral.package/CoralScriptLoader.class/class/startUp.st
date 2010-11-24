initialize-release
startUp
	"Smalltalk addToStartUpList: self"
	| script |
	SmalltalkImage current shouldHaltAtStart
		ifTrue: [self halt].
	
	script := ((SmalltalkImage current getSystemAttribute: 2) ifNil:['']) convertFromSystemString.

	script isEmpty ifFalse:[
		CoralScriptWriting resetArguments.
		[PPCoralParser parse: (FileStream readOnlyFileNamed: script) contents] 
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
		SmalltalkImage current shouldQuitAfterExecution ifTrue: [Smalltalk quitPrimitive]
		]