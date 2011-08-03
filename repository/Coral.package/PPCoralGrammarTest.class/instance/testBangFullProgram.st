tests
testBangFullProgram
	"self debug: #testBangFullProgram"

	self 
		parse: '#!/bin/usr/
		[Beeper beep]
		
				Point>> foo 
					[  1 + 2]
				
				Point>> foo2 
					[ ^ 1 + 2]
				
				[Beeper beep]'
		rule: #program
		
	