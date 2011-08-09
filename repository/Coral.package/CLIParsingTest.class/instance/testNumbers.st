tests-parameters
testNumbers
	| numbers |
	numbers := #('123' '42' '-12' '3.14').
	self assert: (CLIParameter integer) star
		parse: numbers to: #(123 42) end: 2.
	self assert: (CLIParameter relativeInteger) star
		parse: numbers to: #(123 42 -12) end: 3.
	self assert: (CLIParameter number) star
		parse: numbers to: #(123 42 -12 3.14).
