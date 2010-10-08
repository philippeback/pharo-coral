arguments
getAllArguments
	currentArgs ifNil: [ 
		| coralArgs |
		coralArgs := SmalltalkImage current extractMinusParameters at: #coralArgs.
		currentArgs := SmalltalkImage current extractMinusParametersFrom:  ((coralArgs first subStrings: '"') reject: [ :each | each = String space ]).	
	].

	^ currentArgs deepCopy
	