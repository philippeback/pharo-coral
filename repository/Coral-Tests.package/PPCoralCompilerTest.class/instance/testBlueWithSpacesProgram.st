tests
testBlueWithSpacesProgram
	"self debug: #testBlueWithSpacesProgram"
	
	self assert: 
		(PPCoralParser parse: '
	CoralTestFixtureClass>>blue 
	    [^ 2]
' 
		) = #(blue) 
	