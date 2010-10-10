testing
testDefineAMethod
	"self debug: #testDefineAMethod"
	
	PPCoralParser parse: 'SandBox >>blue [^ 2]'.
	self assert: (self environment at: #SandBox) new blue = 2.
	(self environment at: #SandBox) removeSelector: #blue.