tests-parameters
testBool
	self assert: (CLIParameter boolean) fail: #('falsely').
	self
		assert: (CLIParameter boolean) star
		parse: #('true' 'false' 'yes' 'no' 'No' 'NO')
		to: #(true false true false false false)