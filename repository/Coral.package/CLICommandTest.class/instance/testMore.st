tests-parsing
testMore
	self assert: command parse: #('dostuff' '-m').
	self assert: command parse: #('dostuff' '--more').
	self assert: command fail:  #('dostuff' '-more').
	self assert: command fail:  #('dostuff' '--m').
