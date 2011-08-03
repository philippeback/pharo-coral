tests
testBangProgram
	"self debug: #testBangProgram"
	
	self assert: 
		(PPCoralParser parse: '#!/bin/usr/coralNegated 
	Point>>blue 
	    [^ 2]
	
	Point>>red 
	    [^ self blue]
	
	[Point new red = 2]' 
		) = #(blue red true)
	