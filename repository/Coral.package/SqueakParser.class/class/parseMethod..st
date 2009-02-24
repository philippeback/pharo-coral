parsing
parseMethod: stringOrStream 
	
	^ (self parseStream: stringOrStream readStream startingAt: self startingStateForMethod)
		source: stringOrStream contents