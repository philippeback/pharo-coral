tests
testBlueProgram
	"self debug: #testBlueProgram"
	"Pay attention the test should use a class that is in the image"
	

	self assert: (PPCoralParser parse: 'Point>>blue[^2]' )= #(#blue)
	