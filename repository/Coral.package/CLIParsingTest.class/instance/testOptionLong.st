tests-options
testOptionLong
	self assert: self optionLong parse: #('--long') to: '--long'.
	self assert: self optionLong end fail: #('--long-long').