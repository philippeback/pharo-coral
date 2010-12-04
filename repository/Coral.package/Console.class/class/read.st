console
read
	"Read a string until newline"
	| inputStr exitShell |
	
	exitShell := false.
		
	Console print: Console prompt.
		
	[ exitShell ] whileFalse: [	
				((inputStr := OSProcess readFromStdIn) = '') ifFalse: [
						inputStr := inputStr allButLast.
						exitShell := true. ]].
				
	^inputStr
	
