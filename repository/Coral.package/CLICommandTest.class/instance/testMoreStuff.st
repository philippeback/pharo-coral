tests-parsing
testMoreStuff
	self assert: command parse: #('dostuff' '-m' '-s' 'foo').
	self assert: command parse: #('dostuff' '-m' '--stuff' 'foo').

	self assert: command fail:  #('dostuff' '-m' '-stuff' 'foo').
	self assert: command fail:  #('dostuff' '-m' '--s' 'foo').
	self assert: command fail: #('dostuff' '-more' '-s' 'foo').
	self assert: command fail: #('dostuff' '--m' '--stuff' 'foo').

	self assert: command fail: #('dostuff' '-m' '-s').
	self assert: command fail: #('dostuff' '-m' '--stuff').
	self assert: command fail: #('dostuff' '-m' '-s' 'foo' 'bar').
	self assert: command fail: #('dostuff' '-m' '--stuff' 'foo' 'bar').
