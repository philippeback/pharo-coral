tests-arguments
testExtractTwoArgsWithAndWithoutMinus
	| args extract keys |
	
	args := #('ArgWithoutMinus' '-ArgWithMinus').
	extract := SmalltalkImage current extractMinusParametersFrom: args.
	keys := extract keys sort.
	
	self assert: extract isDictionary.
	self assert: extract size = 2.
	self assert: ((keys at:1) = #*).
	self assert: ((keys at:2) = #ArgWithMinus).
	self assert: ((extract at:#*) = (Array with: 'ArgWithoutMinus')).
	self assert: ((extract at:#ArgWithMinus) isEmpty)
	