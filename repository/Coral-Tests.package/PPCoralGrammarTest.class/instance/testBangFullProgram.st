tests
testBangFullProgram
	"self debug: #testBangFullProgram"

	self 
		parse: '#!/bin/usr/
		[Beeper beep]
		
				CoralTestFixtureClass>> foo 
					[  1 + 2]
				
				CoralTestFixtureClass>> foo2 
					[ ^ 1 + 2]
				
				[Beeper beep]'
		rule: #program
		
	