accessing
authorInitials

	self properties pragmas do:[:each | (each keyword = #authorInitials:) ifTrue: [^each arguments first]].
	^Utilities authorInitialsPerSe ifNil:[^'saphir']