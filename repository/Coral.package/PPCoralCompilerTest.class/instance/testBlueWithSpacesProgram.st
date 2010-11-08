testing
testBlueWithSpacesProgram
	"self debug: #testBlueWithSpacesProgram"
	
	self assert: 
		(PPCoralParser parse: '
	SandBox>>blue 
	    [^ 2]
' 
		) = #(blue red true)
	