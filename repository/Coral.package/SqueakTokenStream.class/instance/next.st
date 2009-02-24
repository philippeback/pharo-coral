accessing
next
	
	| next |
	next := token.
	self atEnd ifFalse:[token :=  token perform: goNext].
	^next