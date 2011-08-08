tests-commands
testCommand
	self assert: self command parse: #('foo' 'xyz' ).
	self assert: self command parse: #('fu' 'xyz' ).
	self assert: self command parse: #('f' 'xyz' ).
	
	self assert: self command fail: #('notfoo' 'xyz').
	
	self assert: self command parse: #('foo' '-s' 'xyz' ).
	self assert: self command parse: #('foo' '--long' 'xyz' ).
	self assert: self command parse: #('foo' '-b' 'right' 'xyz' ).
	self assert: self command parse: #('foo' '--both' 'down' '--long' '-s' 'xyz' ).
