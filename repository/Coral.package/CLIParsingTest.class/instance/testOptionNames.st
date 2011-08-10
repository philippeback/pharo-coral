tests-options
testOptionNames
	self assert: optionShort name = '-s'.
	self assert: optionLong name = '--long'.
	self assert: optionBoth name = '-b/--both'