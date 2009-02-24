error handling
reportError: anInteger 

	messageError ifNil:[
		| acceptedToken |
		messageError := ''.
		acceptedToken := self collectAcceptableToken asArray.
		acceptedToken 
			do: [:each | acceptedToken last == each 
							ifFalse:[messageError := messageError,  
										(self class tokenDescription: each)]
							ifTrue:[messageError := messageError, 
										(self class tokenDescription: each), ' expected']]
			separatedByNext:[:each | acceptedToken last == each 
							ifFalse:[messageError := messageError, ', ']
							ifTrue:[messageError := messageError, ' or ']].
	messageError := messageError capitalized].
	self reportErrorMessage: (anInteger = 0 
				ifTrue: [messageError]
				ifFalse: [self errorTable at: anInteger])
	
	