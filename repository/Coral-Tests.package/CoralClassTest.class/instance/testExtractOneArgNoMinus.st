tests-arguments
testExtractOneArgNoMinus
	| args extract |
	
	args := #('ArgNoMinus').
	extract := SmalltalkImage current extractMinusParametersFrom: args.
	
	self assert: extract isDictionary.
	self assert: extract size = 1.
	self assert: ((extract keys at:1) = #*).
	self assert: ((extract at:#*) = args)
	