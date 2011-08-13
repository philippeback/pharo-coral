tests
testMethodUnary2
	"self debug: #testMethodUnary2"

	self 
		parse: '   Point  >>  coralNegated   [ ^ 0 - self ]  '
		rule: #method
		
	