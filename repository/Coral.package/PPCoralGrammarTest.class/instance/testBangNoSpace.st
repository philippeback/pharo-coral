tests
testBangNoSpace
	"self debug: #testBangNoSpace"

	self 
		parse: '#!/usr/bin/work'
		rule: #program
	