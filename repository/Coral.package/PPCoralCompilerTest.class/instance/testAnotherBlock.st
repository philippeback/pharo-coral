testing
testAnotherBlock
	"self debug: #testAnotherBlock"
	
	self assert: (PPCoralParser parse: '[Beeper beep] ') = {Beeper}						
	