tests
testDefineAMethod
	"self debug: #testDefineAMethod"
	
	PPCoralParser parse: 'Point >>blue [^ 2]'.
	self assert: (self class environment at: #Point) new blue = 2.
	(self class environment at: #Point) removeSelector: #blue.