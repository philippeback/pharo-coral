tests-parameters
testAnyOfPlus
	self assert: self anyOf plus parse: #('down' 'right' 'center' 'left') to: #('down' 'right') end: 2.
