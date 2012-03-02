tests
testSimpleClassDefWithPackage
	<expectedFailure>
	| c |
	c := (Point < self c1Name
			category: self p1Name).
	
	self assert: c superclass = Point.
	self assert: c category = self p1Name.

	"and this fails (it goes to _UnpackagedPackage)"
	self assert: c package name = self p1Name.

	