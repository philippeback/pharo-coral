console
go: lineNumber
	"execute the specified line in history"
	
	history removeLast.
	
	(lineNumber > 0 & lineNumber <= history size) ifTrue: [
		[ ScriptInterpreter parse: '[' , (history at: lineNumber) , ']' ]
			on: Exception
			do: [ :ex | Console printNl: ex printString ]
	]
		
		