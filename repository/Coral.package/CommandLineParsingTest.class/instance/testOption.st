tests-parameters
testOption
	| failure |
	self parse: '-o foo' parameter: option.
	self parse: '-ofoo' parameter: option.
	failure := self fail: '-o' parameter: option.
	self assert: (failure message endsWith: 'expects an argument.').
	
	self fail: '-y foo' parameter: option.
	self fail: '+o foo' parameter: option.

	self parse: '--oops foo' parameter: option.
	self parse: '--oops=foo' parameter: option.
	failure := self fail: '--oops' parameter: option.
	self assert: (failure message endsWith: 'expects an argument.').
	
	self fail: '--yoghurt' parameter: option.
	
	self fail: '42' parameter: option