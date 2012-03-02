tests
testSimpleClassDef
	| c |
	
	c := createdClasses add:
		(Point < self c1Name).
	
	self assert: c superclass = Point.
	self assert: c instVarNames isEmpty