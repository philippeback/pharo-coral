tests
testMethodBinary2
	"self debug: #testMethodBinary2"

	self 
		parse: '     CoralTestFixtureClass    >>   + arg [^ self + arg ]'
		rule: #method
		
	