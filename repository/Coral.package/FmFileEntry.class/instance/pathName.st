accessing
pathName
	| str |
	str _ '' writeStream.
	self printPathOn: str.
	^str contents