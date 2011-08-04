initialization
short: aCharacter
	aCharacter = $- ifTrue: [ CLIInvalidSpec signal: 'Short form option cannot be --' ].
	short := aCharacter