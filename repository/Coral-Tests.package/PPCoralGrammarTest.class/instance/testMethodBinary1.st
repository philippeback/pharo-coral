tests
testMethodBinary1
	"self debug: #testMethodBinary1"

	self 
		parse: 'CoralTestFixtureClass>>+ arg [^ self + arg]'
		rule: #method
		
	