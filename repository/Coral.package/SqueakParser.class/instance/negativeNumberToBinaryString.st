private
negativeNumberToBinaryString
	
	currentToken := (SqueakToken 
		value: '-'
		start: currentToken startPosition
		id: (Array with: scanner binarySymbolId)) substitueTo: currentToken; yourself.
	scanner position: currentToken stopPosition.
	^ self actionForCurrentToken