private
createTokenFor: string
	
	| token |
	token := SqueakToken 
				value: string
				start: start + 1
				id: matchActions
				prevToken: previousToken.
	previousToken := token.
	outputStream reset.
	matchActions := nil.
	returnMatchBlock value: token