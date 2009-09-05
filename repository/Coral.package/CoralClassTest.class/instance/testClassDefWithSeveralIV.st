tests
testClassDefWithSeveralIV
	"self debug: #testClassDefWithSeveralIV"
	
	| coloredPointClass |
	coloredPointClass := Point < #ColoredPoint 
							iv: 'color z'.
	self assert: coloredPointClass superclass = Point.
	self deny: coloredPointClass instVarNames isEmpty.
	self assert: (coloredPointClass instVarNames includes: 'color').
	self assert: (coloredPointClass instVarNames includes: 'z').