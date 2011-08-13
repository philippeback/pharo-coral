running
on: argvArray in: environment 
	| context |
	context := self parse: argvArray.
	context isPetitFailure ifTrue: [ CLIInvalidInvocation signal ].
	
	^ context environment: environment