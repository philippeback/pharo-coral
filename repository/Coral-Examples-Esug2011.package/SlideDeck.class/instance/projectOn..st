displaying
projectOn: aScreen

	self goToFirst.
	[ index <= slides size ] whileTrue: [ | cmd |
		(slides at: index) projectOn: aScreen.
		cmd := aScreen readOneCharacter.
		
		('qQ' includes: cmd) ifTrue: [ aScreen clearSlide. ^ self ].
		('1{' includes: cmd) ifTrue: [ self goToFirst ].
		('0}' includes: cmd) ifTrue: [ self goToLast ].
		(' n]' , String lf includes: cmd) ifTrue: [ self goToNext ].
		('p[' includes: cmd) ifTrue: [ self goToPrevious ].
		('P' includes: cmd) ifTrue: [ self goToPreviousPartial ].
		].
	aScreen clearSlide.
	aScreen display: 'Thanks for your attention!'