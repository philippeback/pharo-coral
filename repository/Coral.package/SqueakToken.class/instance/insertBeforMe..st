add
insertBeforMe: aToken
	
	aToken previous: self previous.
	self previous: aToken