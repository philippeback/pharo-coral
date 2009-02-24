accessing
contents
	
	| cont nextToken |
	cont := OrderedCollection new.
	nextToken := token.
	[nextToken isNil] whileFalse: [cont add: nextToken. nextToken := nextToken perform: goNext].
	^cont asArray