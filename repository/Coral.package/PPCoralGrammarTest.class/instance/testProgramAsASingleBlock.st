tests
testProgramAsASingleBlock
	"self debug: #testProgram"

	self 
		parse: ' [Beeper beep]'
		rule: #program
		
	