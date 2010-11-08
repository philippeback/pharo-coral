testing
testDefineAMethodWithExtraDot
	"self debug: #testDefineAMethodWithExtraDot"
	
	PPCoralParser parse: 'Point>>blue [^ 2 . ]'.
	self assert: Point new blue = 2.
	Point removeSelector: #blue.