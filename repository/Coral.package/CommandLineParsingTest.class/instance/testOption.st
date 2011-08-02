as yet unclassified
testOption
	self parse: '-o foo' parameter: option.
	self parse: '-ofoo' parameter: option.
	self fail: '-o' parameter: option.
	self fail: '-y foo' parameter: option.
	self fail: '+o foo' parameter: option.

	self parse: '--oops foo' parameter: option.
	self parse: '--oops=foo' parameter: option.
	self fail: '--oops' parameter: option.
	self fail: '--yoghurt' parameter: option.
	
	self fail: '42' parameter: option