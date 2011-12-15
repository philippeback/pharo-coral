tests
testFullProgram
	"self debug: #testFullProgram"

	self 
		parse: ' [Beeper beep]
		
				CoralTestFixtureClass>> foo 
					[  1 + 2]
				
				CoralTestFixtureClass>> foo2 
					[ ^ 1 + 2]
				
				[Beeper beep]'
		rule: #program
		
	