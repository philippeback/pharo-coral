initialize-release
startUp
	"Smalltalk addToStartUpList: self"
	| inputStr exitShell  script |
	
	Console initHistory.
	Console prompt: '> '.	
		
	((SmalltalkImage current getSystemAttribute: 4) = '') 
		ifTrue: [
			Console banner.
			exitShell := false.
				
			[ exitShell ] whileFalse: [
				((inputStr := Console read) = '') 
					ifTrue: [ Console listHistory ]
					ifFalse: [
						Console addToHistory: inputStr.
							[ ScriptInterpreter parse: '[' , inputStr , ']' ]
								on: Exception
								do: [ :ex | Console printNl: ex printString ] ]
					]
		]
		ifFalse: [
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
		]
		
	
