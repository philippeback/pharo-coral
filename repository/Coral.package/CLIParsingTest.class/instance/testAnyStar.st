tests
testAnyStar
	self assert: self any star parse: #('abc') to: #('abc').
	self assert: self any star parse: #('123') to: #('123').
	self assert: self any star parse: #('x & ;') to: #('x & ;').
	self assert: self any star parse: #('') to: #('').
	
	self assert: self any star parse: #('123' 'abc' 'jk6') to: #('123' 'abc' 'jk6').
	
	self assert: self any star parse: #() to: #().
