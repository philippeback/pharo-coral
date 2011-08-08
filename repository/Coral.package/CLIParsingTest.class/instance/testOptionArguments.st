tests-options
testOptionArguments
	self
		assert: (self optionShort parameter: self any)
		parse: #('-s' '42' '51' '1337')
		to: #('-s' '42') end: 2.
	self
		assert: (self optionShort parameter: self anyOf , self anyOf)
		parse: #('-s' 'up' 'left' '1337') to: #('-s' ('up' 'left')) end: 3.
	