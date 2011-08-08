tests-options
testOptionShort
	self assert: self optionShort shortForm = '-s'.
	self assert: self optionShort longForm = nil.
	
	self assert: self optionShort parse: #('-s') to: '-s'.
	self assert: self optionShort fail: #('--s').
	self assert: self optionShort fail: #('-ss').