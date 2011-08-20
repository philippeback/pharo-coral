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
					Console puts: ex printString.
					(CommandLine uniqueInstance hasOption: #debug)
						ifTrue: [ Console puts: 'Spawning a debugger...'. ex pass ]
						ifFalse: [ Smalltalk logError: ex printString inContext: thisContext ] ] ].

	Console newline.
	(CommandLine uniqueInstance hasOption: #debug)
		ifFalse: [Smalltalk quitPrimitive]
