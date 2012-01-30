initialize-release
runScript

	| script stream |
	script := ((SmalltalkImage current documentPath) ifNil:['']) convertFromSystemString.
	script isEmpty ifTrue: [^ self ].
	
	stream := FileStream readOnlyFileNamed: script.
	stream converter: (TextConverter newForEncoding: 'UTF-8').
	
	[PPCoralParser parse: stream contents]
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
