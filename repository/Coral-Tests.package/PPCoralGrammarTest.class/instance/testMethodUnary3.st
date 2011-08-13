tests
testMethodUnary3
	"self debug: #testMethod3"

	"for now let us test the following"
	self 
		parse: '   Point >> coralNegated [^ 0 - self]     '
		rule: #method
	