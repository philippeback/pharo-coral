tests
testClassDefWithSeveralIV
	| c |
	
	c := (Point < self c1Name
			iv: 'color z').
	
	self assert: c superclass = Point.
	self deny:   c instVarNames isEmpty.
	self assert: (c instVarNames includes: 'color').
	self assert: (c instVarNames includes: 'z').