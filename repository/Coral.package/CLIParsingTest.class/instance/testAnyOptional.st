tests
testAnyOptional
	self assert: self any optional parse: #('abc') to: 'abc'.
	self assert: self any optional parse: #('123') to: '123'.
	self assert: self any optional parse: #('x & ;') to: 'x & ;'.
	self assert: self any optional parse: #('') to: ''.
	
	self assert: self any optional parse: #('123' 'abc') end: 1.
	
	self assert: self any optional parse: #() to: nil.
