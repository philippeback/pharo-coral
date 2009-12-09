testing
testABlock
	"self debug: #testABlock"
	
	| res |
	res := PPCoralParser parse: '[ 1 + 2]'.
	self assert: res = #(3).
