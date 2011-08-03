tests
testBang
	"self debug: #testBang"

	self 
		parse: '#!/usr/bin/work '
		rule: #program.
		
	self 
		parse: '#!/usr/bin/work   '
		rule: #program.
		
		
	