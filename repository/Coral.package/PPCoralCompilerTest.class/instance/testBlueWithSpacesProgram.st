testing
testBlueWithSpacesProgram
	"self debug: #testBlueWithSpacesProgram"
	
	self assert: 
		(PPCoralParser parse: '
	Point>>blue 
	    [^ 2]
' 
		) = #(blue) 
	