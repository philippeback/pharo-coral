testing
testMethodUnary1
	"self debug: #testMethodUnary1"

	self 
		parse: 'Point>>coralNegated[^0-self]'
		rule: #method
		
	