tests
testMethodUnaryClass4
	"self debug: #testMethodUnaryClass4"

	"for now let us test the following"
	self 
		parse: '   Point class >> coralNegated [^ 0 - self]     '
		rule: #program
	