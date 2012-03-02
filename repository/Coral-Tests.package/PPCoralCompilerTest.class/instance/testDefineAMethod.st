tests
testDefineAMethod
	"self debug: #testDefineAMethod"
	
	self parse: 'CoralTestFixtureClass >>blue [^ 2]'.
	self assert: (self class environment at: #CoralTestFixtureClass) new blue = 2.
