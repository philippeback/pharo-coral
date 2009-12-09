testing
testBangProgram
	"self debug: #testBangProgram"
	
	self assert: 
		(PPCoralParser parse: '#!/bin/usr/coralNegated 
	SandBox>>blue 
	    [^ 2]
	
	SandBox>>red 
	    [^ self blue]
	
	[SandBox new red = 2]' 
		) = #(blue red true)
	