tests-arguments
testExtractNil
	| args extract |
	
	args := nil.
	extract := SmalltalkImage current extractMinusParametersFrom: args.
	
	self assert: extract class = Dictionary.
	self assert: extract isEmpty.
	