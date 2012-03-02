tests
testClassDefWithOneSharedIV
	| c |
	
	c := createdClasses add:
		(Point < self c1Name
			shared: 'DefaultColor').
		
	self assert: c superclass = Point.
	self assert: c instVarNames isEmpty.
	self assert: (c classVarNames includes: 'DefaultColor')