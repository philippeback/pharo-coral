tests-parameters
testAnyOfPlus
	self assert: self anyOf plus parse: #('down' 'right' 'incorrect' 'left') to: #('down' 'right') end: 2.
