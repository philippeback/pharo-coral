tests-commands
testSubCommand
	self assert: self subCommand parse: #('bar' 'foo' 'xyz' ).
	self assert: self subCommand parse: #('bar' 'fu' 'xyz' ).
	self assert: self subCommand parse: #('bar' 'f' 'xyz' ).
	
	self assert: self subCommand fail: #('notbar' 'foo' 'xyz').
	
	self assert: self subCommand parse: #('bar' 'foo' '-s' 'xyz' ).
	self assert: self subCommand parse: #('bar' 'foo' '--long' 'xyz' ).
	self assert: self subCommand parse: #('bar' 'foo' '-b' 'right' 'xyz' ).
	self assert: self subCommand parse: #('bar' 'foo' '--both' 'down' '--long' '-s' 'xyz' ).
