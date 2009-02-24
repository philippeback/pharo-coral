error handling
collectAcceptableToken
	
	^self class tokensId select:[:each | (self actionFor: each) ~~ self errorAction]