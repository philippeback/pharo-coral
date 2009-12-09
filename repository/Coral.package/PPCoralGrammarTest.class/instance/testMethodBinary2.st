testing
testMethodBinary2
	"self debug: #testMethodBinary2"

	self 
		parse: '     Point    >>   + arg [^ self + arg ]'
		rule: #method
		
	