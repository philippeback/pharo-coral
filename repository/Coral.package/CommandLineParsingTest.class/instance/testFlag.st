as yet unclassified
testFlag
	self parse: '-x' parameter: flag.
	self fail: '-x foo' parameter: flag.
	self fail: '-y' parameter: flag.
	self fail: '+x' parameter: flag.

	self parse: '--xylophone' parameter: flag.
	self fail: '--xylophone foo' parameter: flag.
	self fail: '--yoghurt' parameter: flag.
	
	self fail: '42' parameter: flag