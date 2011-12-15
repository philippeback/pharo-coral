tests
testMethodUnary2
	"self debug: #testMethodUnary2"

	self 
		parse: '   CoralTestFixtureClass  >>  coralNegated   [ ^ 0 - self ]  '
		rule: #method
		
	