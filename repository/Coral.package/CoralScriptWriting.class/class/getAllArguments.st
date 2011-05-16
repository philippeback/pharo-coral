arguments
getAllArguments
	currentArgs ifNil: [ 
		| coralArgs flag |
		flag := true.
		coralArgs := SmalltalkImage current extractMinusParameters.
		
		coralArgs isNil ifTrue: [ flag := false ] ifFalse: [ flag := coralArgs includesKey: #coralArgs ].
		
		flag 
			ifTrue: [ 
				coralArgs := coralArgs at: #coralArgs.
				coralArgsCollection := (coralArgs first subStrings: '"') reject: [ :each | each = String space ].
				currentArgs := SmalltalkImage current extractMinusParametersFrom: coralArgsCollection.
			]
			ifFalse: [ currentArgs := Dictionary new ]	
	].

	^ currentArgs deepCopy
	