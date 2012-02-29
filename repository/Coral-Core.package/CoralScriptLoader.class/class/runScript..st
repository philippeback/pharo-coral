initialize-release
runScript: aStream

	[PPCoralParser parse: aStream contents]
		on: Exception do: [ :ex |
			(ex isKindOf: InMidstOfFileinNotification) 
				ifTrue:[ ex resume: false ]
				ifFalse: [
					Console printNlError: ex printString.
					(CommandLine uniqueInstance hasOption: #debug)
						ifTrue: [ Console printError: 'Spawning a debugger...'. ex pass ]
						ifFalse: [ Smalltalk logError: ex printString inContext: thisContext ] ] ].

	(CommandLine uniqueInstance hasOption: #debug)
		ifFalse: [Smalltalk quitPrimitive]
