tests
testMethodBinary3
	"self debug: #testMethodBinary3"

	self 
		parse: '     Point    >>   + arg 
							[^ self + arg ]   '
		rule: #method
		
	