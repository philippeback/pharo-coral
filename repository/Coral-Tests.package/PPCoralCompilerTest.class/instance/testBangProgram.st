tests
testBangProgram
	"self debug: #testBangProgram"
	
	self parse: '#!/bin/usr/coral
		CoralTestFixtureClass>>blue 
		    [^ 2]
	
		CoralTestFixtureClass>>red 
		    [^ self blue]
	
		[CoralTestFixtureClass new red = 2]'.
	
	self assert: result equals: #(blue red true)
	