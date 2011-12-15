tests
testMethodKeyword2
	"self debug: #testMethodKeyword2"

	self 
		parse: 'CoralTestFixtureClass >>  coralSetX: x y:y
					 [^ self class new setX: x ; setY: y ] '
		rule: #method
		
	