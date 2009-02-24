add
insertAfterMe: aToken
	
	self next previous: aToken.
	aToken previous: self