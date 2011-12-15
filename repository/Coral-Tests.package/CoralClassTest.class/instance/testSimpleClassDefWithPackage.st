tests
testSimpleClassDefWithPackage
	"self debug: #testSimpleClassDefWithPackage"
	
	| coloredPointClass |
	coloredPointClass := Point < #ColoredPoint
							category: #Box.
	self assert: coloredPointClass superclass = Point.
	self assert: coloredPointClass package name = #Box.
	self assert: coloredPointClass category = #Box.
	