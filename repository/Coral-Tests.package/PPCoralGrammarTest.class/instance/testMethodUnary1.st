tests
testMethodUnary1
	"self debug: #testMethodUnary1"

	self 
		parse: 'CoralTestFixtureClass>>coralNegated[^0-self]'
		rule: #method
		
	