tests-arguments
testExtractEmpty
	| args extract |
	
	args := #().
	extract := SmalltalkImage current extractMinusParametersFrom: args.
	
	self assert: extract class = Dictionary.
	self assert: extract isEmpty.
	