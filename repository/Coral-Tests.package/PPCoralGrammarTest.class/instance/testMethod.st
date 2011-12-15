tests
testMethod
	"self debug: #testMethod"

	self 
		parse: 'CoralTestFixtureClass>>blue [^ 2]'
		rule: #program
		
	