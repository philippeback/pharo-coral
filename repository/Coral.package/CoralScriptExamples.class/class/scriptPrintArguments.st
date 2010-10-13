script examples
scriptPrintArguments
	"CoralInstaller generateScript: #scriptPrintArguments"

	^ '"This script takes * arguments and print them with 3 arguments-using methods"
	
[
	Console printNl:''getScriptName: '', CoralScriptWriting getScriptName.

	Console printNl: ''getAllArgumentsWithoutMinus:''.
	CoralScriptWriting getAllArgumentsWithoutMinus do: [ :each | Console printNl: each ].

	Console printNl: ''getAllArgumentsWithoutMinusButScriptName:''.
	CoralScriptWriting getAllArgumentsWithoutMinusButScriptName do: [ :each | Console printNl: each ]
]	
'