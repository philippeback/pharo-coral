tests
testMethodBinary1
	"self debug: #testMethodBinary1"

	self 
		parse: 'Point>>+ arg [^ self + arg]'
		rule: #method
		
	