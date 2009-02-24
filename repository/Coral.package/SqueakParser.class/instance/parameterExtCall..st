reduction actions
parameterExtCall: nodes

	| args |
	args := WriteStream on: Array new.
	args nextPut: nodes first first.
	^OrderedCollection with: args with: nodes first second