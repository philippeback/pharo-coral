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
				[ PPCoralParser parseExpression: inputStr ]
					on: Exception
					do: [ :ex | Console puts: ex printString ] ]
			]