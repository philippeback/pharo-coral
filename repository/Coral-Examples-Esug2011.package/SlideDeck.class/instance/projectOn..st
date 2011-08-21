displaying
projectOn: aScreen
	| index |
	index := 1.
	[ index <= slides size ] whileTrue: [ | cmd |
		aScreen clearSlide.
		(slides at: index) projectOn: aScreen.
		cmd := aScreen readOneCharacter.
		
		('qQ' includes: cmd) ifTrue: [ ^ self ].
		('1{' includes: cmd) ifTrue: [ index := 1 ].
		('0}' includes: cmd) ifTrue: [ index := slides size ].
		(' n]' , String lf includes: cmd) ifTrue: [ index := index + 1 ].
		('p[' includes: cmd) ifTrue: [ index := index - 1 ].
		].
	aScreen clearSlide.
	aScreen display: 'Thanks for your attention!'