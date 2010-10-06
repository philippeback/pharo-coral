script examples
scriptPrintArguments
	^ '"This script takes * arguments and print them with 3 arguments-using methods"
	
[
	Console printNl:''getScriptName: '', CoralScriptWriting getScriptName.

	Console printNl: ''getAllArguments:''.
	CoralScriptWriting getAllArguments do: [ :each | Console printNl: each ].

	Console printNl: ''getAllArgumentsButScriptName:''.
	CoralScriptWriting getAllArgumentsButScriptName do: [ :each | Console printNl: each ]
]	
'