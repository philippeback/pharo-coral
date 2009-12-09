testing
testFullProgram
	"self debug: #testFullProgram"

	self 
		parse: ' [Beeper beep]
		
				Point>> foo 
					[  1 + 2]
				
				Point>> foo2 
					[ ^ 1 + 2]
				
				[Beeper beep]'
		rule: #program
		
	