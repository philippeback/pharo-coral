tests-parameters
testAnyPlus
	self assert: self any plus parse: #('abc') to: #('abc').
	self assert: self any plus parse: #('123') to: #('123').
	self assert: self any plus parse: #('x & ;') to: #('x & ;').
	self assert: self any plus parse: #('') to: #('').
	
	self assert: self any plus parse: #('123' 'abc' 'jk6') to: #('123' 'abc' 'jk6').
	
	self assert: self any plus fail: #().
