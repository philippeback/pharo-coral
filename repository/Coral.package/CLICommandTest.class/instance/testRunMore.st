tests-todo
testRunMore
	<expectedFailure>
	command runOn: #('dostuff' '--more') in: environment.
	self assert: environment err isEmpty.
	self assert: environment out contents = 'Doing generic stuff!
Doing it even more!
'