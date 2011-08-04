tests-fixme
testAnyDashes
	<expectedFailure>
	"There is an ambiguity: should we accept an argument even if it looks like an option flag?"
	
	self assert: self any fail: #('-x').
	self assert: self any fail: #('--foo').
	
	self assert: self any plus parse: #('foo' '-x') to: #('foo') end: 1.
	self assert: self any star fail: #('--foo' '-x') end: 0.
		
	self assert: self any star parse: #('--foo' '-x') to: #() end: 0.