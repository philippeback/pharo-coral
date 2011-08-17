initialize-release
runScript

	| script |
	script := ((SmalltalkImage current documentPath) ifNil:['']) convertFromSystemString.

	script isEmpty ifTrue: [^ self ].
	
	CoralScriptWriting resetArguments.
	[PPCoralParser parse: (FileStream readOnlyFileNamed: script) contents] 
		on: Exception do: [ :ex |
			(ex isKindOf: InMidstOfFileinNotification) 
				ifTrue:[ ex resume: false ]
				ifFalse: [
					Smalltalk
						logError: ex printString
						inContext: thisContext.
					Console puts: ex printString]].

	Console newline.
	SmalltalkImage current shouldQuitAfterExecution
		ifTrue: [Smalltalk quitPrimitive]
