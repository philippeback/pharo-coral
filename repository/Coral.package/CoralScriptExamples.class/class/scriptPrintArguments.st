script examples
scriptPrintArguments
	^ '[
	Console printNl:''getScriptName: '', CoralScriptWriting getScriptName.

	Console printNl: ''getAllArguments:''.
	CoralScriptWriting getAllArguments do: [ :each | Console printNl: each ].

	Console printNl: ''getAllArgumentsButScriptName:''.
	CoralScriptWriting getAllArgumentsButScriptName do: [ :each | Console printNl: each ]
]	
'