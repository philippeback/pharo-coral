tests
testSimpleClassDef
	"self debug: #testSimpleClassDef"
	
	| coloredPointClass |
	coloredPointClass := Point < #ColoredPoint.
	self assert: coloredPointClass superclass = Point.
	self assert: coloredPointClass instVarNames isEmpty