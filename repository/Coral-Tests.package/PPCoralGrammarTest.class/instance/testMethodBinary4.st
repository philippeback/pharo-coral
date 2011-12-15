tests
testMethodBinary4
	"self debug: #testMethodBinary4"

	self 
		parse:  '     CoralTestFixtureClass  class  >>   + arg 
							[^ self + arg ]   '
		rule: #method
		
	