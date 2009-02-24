parsing
parseScript: stringOrStream onError: aBlock

	| parser |
	parser := self new.
	parser errorBlock: aBlock.
	parser initializeParserWith: stringOrStream type: #on:errorBlock:.
	^ parser parseScript: stringOrStream