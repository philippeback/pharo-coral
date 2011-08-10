tests-parsing
testHelp
	self assert: command parse: #('dostuff' '-h').
	self assert: command parse: #('dostuff' '--help').
	self assert: command fail:  #('dostuff' '-help').
	self assert: command fail:  #('dostuff' '--h').
