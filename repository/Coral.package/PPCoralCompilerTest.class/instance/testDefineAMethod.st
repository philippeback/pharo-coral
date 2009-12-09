testing
testDefineAMethod
	"self debug: #testDefineAMethod"
	
	PPCoralParser parse: 'SandBox>>blue [^ 2]'.
	self assert: SandBox new blue = 2.
	SandBox removeSelector: #blue.