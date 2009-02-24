instance creation
value: aString start: anInteger id: anObject prevToken: aToken

	^(self new)
		value: aString
			start: anInteger
			id: anObject;
		previous: aToken;	
		yourself