tests
testClassDefWithOneSharedIV
	"self debug: #testClassDefWithOneSharedIV"
	
	| coloredPointClass |
	coloredPointClass := Point < #ColoredPoint 
							shared: 'DefaultColor'.
	self assert: coloredPointClass superclass = Point.
	self assert: coloredPointClass instVarNames isEmpty.
	self assert: (coloredPointClass classVarNames  includes: 'DefaultColor')