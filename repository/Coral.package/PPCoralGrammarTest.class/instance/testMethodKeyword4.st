testing
testMethodKeyword4
	"self debug: #testMethodKeyword4"

	self 
		parse: '   Point class >>  coralNewX: x y:        
		   y
					 [^ self  new setX: x ; setY: y ] '
		rule: #method
		
	