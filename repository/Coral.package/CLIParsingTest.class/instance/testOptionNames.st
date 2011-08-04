tests-options
testOptionNames
	self assert: self optionShort name = '-s'.
	self assert: self optionLong name = '--long'.
	self assert: self optionBoth name = '-b/--both'