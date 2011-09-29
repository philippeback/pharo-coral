initialize-release
runScript

	| script |
	script := ((SmalltalkImage current vm documentPath) ifNil:['']) convertFromSystemString.

	script isEmpty ifTrue: [^ self ].
	
	CoralScriptWriting resetArguments.
	[PPCoralParser parse: (FileStream readOnlyFileNamed: script) contents] 
		on: Exception do: [ :ex |
			Console puts: ex printString.
			(ex isKindOf: InMidstOfFileinNotification) 
				ifTrue:[ ex resume: false ]
				ifFalse: [
					Smalltalk
						logError: ex printString
						inContext: thisContext
						to: 'CoralDebug.log'.
					Console puts: ex printString]].

	Console newline.
	SmalltalkImage current shouldQuitAfterExecution
		ifTrue: [Smalltalk quitPrimitive]
