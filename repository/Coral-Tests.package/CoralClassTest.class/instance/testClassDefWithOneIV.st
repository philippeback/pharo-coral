tests
testClassDefWithOneIV
	| c |

	c := (Point < self c1Name
			iv: 'color').

	self assert: c superclass = Point.
	self deny: c instVarNames isEmpty.
	self assert: c instVarNames = #('color')