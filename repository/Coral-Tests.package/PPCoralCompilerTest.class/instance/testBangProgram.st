tests
testBangProgram
	"self debug: #testBangProgram"
	
	self assert: 
		(PPCoralParser parse: '#!/bin/usr/coralNegated 
	CoralTestFixtureClass>>blue 
	    [^ 2]
	
	CoralTestFixtureClass>>red 
	    [^ self blue]
	
	[CoralTestFixtureClass new red = 2]' 
		) = #(blue red true)
	