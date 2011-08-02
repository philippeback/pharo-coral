as yet unclassified
asParser
	| result |
	result := PPFailingParser message: self failureMessage.
	self hasName
		ifTrue: [ result := ('--' asParser , name asParser) / result ].
	self hasShort
		ifTrue: [ result := ($- asParser , short asParser) / result ].
	^ result