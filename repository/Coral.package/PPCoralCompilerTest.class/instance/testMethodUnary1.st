testing
testMethodUnary1
	"self debug: #testMethodUnary1"

	super testMethodUnary1.
	self assert: (result = #coralNegated)
	"
	self assert: result isMethod.
	self assert: result arguments isEmpty.
	self assert: result body temporaries isEmpty.
	self assert: result body statements size = 1.
	self assert: result body statements first isReturn.
	self assert: result body statements first value isMessage.
	self assert: result body statements first value receiver isLiteral.
	self assert: result body statements first value selector = #-.
	self assert: result body statements first value arguments size = 1.
	self assert: result body statements first value arguments first isVariable
	"