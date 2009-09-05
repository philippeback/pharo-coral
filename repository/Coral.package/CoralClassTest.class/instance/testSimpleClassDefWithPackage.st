tests
testSimpleClassDefWithPackage
	"self debug: #testSimpleClassDefWithPackage"
	
	| coloredPointClass |
	coloredPointClass := Point < #ColoredPoint
							package: #Box.
	self assert: coloredPointClass superclass = Point.
	self assert: coloredPointClass package = #Box.
	self assert: coloredPointClass category = #Box.
	