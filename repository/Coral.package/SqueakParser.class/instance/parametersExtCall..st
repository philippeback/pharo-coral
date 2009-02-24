reduction actions
parametersExtCall: nodes

	| aCol |
	aCol := nodes first.
	aCol  first nextPut: (nodes second first).
	aCol at: 2 put: nodes second second.
	^aCol