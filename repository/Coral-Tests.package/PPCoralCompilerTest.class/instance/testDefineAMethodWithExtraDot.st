tests
testDefineAMethodWithExtraDot
	"self debug: #testDefineAMethodWithExtraDot"
	
	PPCoralParser parse: 'CoralTestFixtureClass>>blue [^ 2 . ]'.
	self assert: (self class environment at: #CoralTestFixtureClass) new blue = 2.
