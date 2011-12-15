tests
testMethodKeyword3
	"self debug: #testMethodKeyword3"

	self 
		parse: '   CoralTestFixtureClass >>  coralSetX: x y:        
		   y
					 [^ self class new setX: x ; setY: y ] '
		rule: #method
		
	