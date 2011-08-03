tests
testMethodBinary4
	"self debug: #testMethodBinary4"

	self 
		parse:  '     Point  class  >>   + arg 
							[^ self + arg ]   '
		rule: #method
		
	