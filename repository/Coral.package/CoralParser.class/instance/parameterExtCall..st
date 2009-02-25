reduction actions
parameterExtCall: nodes
	| args |
	args := WriteStream on: Array new.
	args nextPut: nodes first.
	^args