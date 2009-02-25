reduction actions
byteStreamPut: nodes

	^ nodes first
		nextPut: nodes second value asNumber;
		yourself