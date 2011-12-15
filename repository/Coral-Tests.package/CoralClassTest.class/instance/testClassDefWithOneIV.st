tests
testClassDefWithOneIV
	"self debug: #testClassDefWithOneIV"
	
	| coloredPointClass |
	coloredPointClass := Point < #ColoredPoint 
							iv: 'color'.
	self assert: coloredPointClass superclass = Point.
	self deny: coloredPointClass instVarNames isEmpty.
	self assert: coloredPointClass instVarNames = #('color')