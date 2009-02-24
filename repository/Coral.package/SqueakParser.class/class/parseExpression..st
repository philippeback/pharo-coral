parsing
parseExpression: stringOrStream 
	
	^ self parseStream: stringOrStream readStream startingAt: self startingStateForSequence.