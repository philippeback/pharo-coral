tests
testMethodBinary3
	"self debug: #testMethodBinary3"

	self 
		parse: '     CoralTestFixtureClass    >>   + arg 
							[^ self + arg ]   '
		rule: #method
		
	