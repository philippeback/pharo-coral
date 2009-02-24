replace
substitueTo: aToken
	
	self previous: aToken previous.
	aToken next ifNotNilDo:[:nextToken | nextToken previous: self]