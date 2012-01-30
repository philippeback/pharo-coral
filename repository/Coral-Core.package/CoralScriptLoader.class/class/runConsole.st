initialize-release
runConsole
	| exitShell inputStr |
	Console banner.
	exitShell := false.
		
	[ exitShell ] whileFalse: [
		((inputStr := Console read) = '') 
			ifTrue: [ Console listHistory ]
			ifFalse: [
				Console addToHistory: inputStr.
				[ Console puts: (PPCoralParser parse: '[' , inputStr , ']') first printString ]
					on: Exception
					do: [ :ex | Console print: 'CoralScriptLoader handler: '. Console printNlError: ex printString ] ]
			]