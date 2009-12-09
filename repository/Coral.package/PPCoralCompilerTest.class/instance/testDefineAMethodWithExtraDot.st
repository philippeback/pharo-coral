testing
testDefineAMethodWithExtraDot
	"self debug: #testDefineAMethodWithExtraDot"
	
	PPCoralParser parse: 'SandBox>>blue [^ 2 . ]'.
	self assert: SandBox new blue = 2.
	SandBox removeSelector: #blue.