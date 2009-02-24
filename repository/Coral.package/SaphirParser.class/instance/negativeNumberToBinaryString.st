private
negativeNumberToBinaryString
	
	currentToken := SmaCCToken 
		value: '-'
		start: currentToken startPosition
		id: (Array with: scanner binarySymbolId).
	scanner position: currentToken stopPosition.
	^ self actionForCurrentToken