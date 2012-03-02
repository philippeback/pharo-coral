tests
testDefineAMethodWithExtraDot
	"self debug: #testDefineAMethodWithExtraDot"
	
	self parse: 'CoralTestFixtureClass>>blue [^ 2 . ]'.
	self assert: (self class environment at: #CoralTestFixtureClass) new blue = 2.
