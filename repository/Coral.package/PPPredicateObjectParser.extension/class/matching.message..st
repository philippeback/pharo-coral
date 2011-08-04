*coral-instance creation
matching: elementParser message: aString
	^ self
		on: [ :each | elementParser matches: each ]
		message: aString