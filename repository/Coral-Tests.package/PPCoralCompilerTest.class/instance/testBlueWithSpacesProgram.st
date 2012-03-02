tests
testBlueWithSpacesProgram
	"self debug: #testBlueWithSpacesProgram"
	
	self assert: '
	CoralTestFixtureClass>>blue 
	    [^ 2]
' 
		is: #(blue) 
	