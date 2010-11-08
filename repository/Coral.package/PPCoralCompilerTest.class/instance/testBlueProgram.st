testing
testBlueProgram
	"self debug: #testBlueProgram"
	
	self assert: 
		(PPCoralParser parse: 'SandBox>>blue[^2]') = #(blue red true)
	