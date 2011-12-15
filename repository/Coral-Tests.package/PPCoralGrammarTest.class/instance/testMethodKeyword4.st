tests
testMethodKeyword4
	"self debug: #testMethodKeyword4"

	self 
		parse: '   CoralTestFixtureClass class >>  coralNewX: x y:        
		   y
					 [^ self  new setX: x ; setY: y ] '
		rule: #method
		
	