tests
testBang
	"self debug: #testBang"

	self parse: '#!/usr/bin/work '.
	self parse: '#! /usr/bin/work   '.
		
		
	