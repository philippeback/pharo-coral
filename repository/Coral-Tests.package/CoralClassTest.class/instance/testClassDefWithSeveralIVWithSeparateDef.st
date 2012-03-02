tests
testClassDefWithSeveralIVWithSeparateDef
	| c |
	
	c := createdClasses add:
		(Point < self c1Name 
			iv: 'color';
			iv: 'z').
	
	self assert: c superclass = Point.
	self deny:   c instVarNames isEmpty.
	self assert: (c instVarNames includes: 'color').
	self assert: (c instVarNames includes: 'z').