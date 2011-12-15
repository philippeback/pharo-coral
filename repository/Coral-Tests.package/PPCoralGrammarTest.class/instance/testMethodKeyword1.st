tests
testMethodKeyword1
	"self debug: #testMethodKeyword1"

	self 
		parse: 'CoralTestFixtureClass>>coralSetX: x y:y
					 [^ self class new setX: x ; setY: y ]'
		rule: #method
		
	