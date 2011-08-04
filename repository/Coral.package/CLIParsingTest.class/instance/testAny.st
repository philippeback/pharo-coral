fixtures
testAny
	self assert: self any parse: #('abc') to: 'abc'.
	self assert: self any parse: #('123') to: '123'.
	self assert: self any parse: #('x & ;') to: 'x & ;'.
	self assert: self any parse: #('') to: ''.
	
	self assert: self any parse: #('123' 'abc') end: 1.
	
	self assert: self any fail: #() end: 0