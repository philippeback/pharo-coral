tests-parameters
testAnyOf
	self assert: self anyOf parse: #('left') to: 'left'.
	self assert: self anyOf parse: #('up') to: 'up'.
	
	self assert: self anyOf parse: #('down' 'right') to: 'down' end: 1.
	
	self assert: self anyOf fail: #('upper').
	self assert: self anyOf fail: #('leftmost').
	self assert: self anyOf fail: #('incorrect')
