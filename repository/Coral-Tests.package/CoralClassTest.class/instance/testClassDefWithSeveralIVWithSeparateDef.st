tests
testClassDefWithSeveralIVWithSeparateDef
	"self debug: #testClassDefWithSeveralIVWithSeparateDef"
	
	| coloredPointClass |
	coloredPointClass := Point < #ColoredPoint 
							iv: 'color';
							iv: 'z'.
	self assert: coloredPointClass superclass = Point.
	self deny: coloredPointClass instVarNames isEmpty.
	self assert: (coloredPointClass instVarNames includes: 'color').
	self assert: (coloredPointClass instVarNames includes: 'z').