generated-scanner
scan2
	self recordMatch: #(24 ).
	self step.
	currentCharacter = $' ifTrue: [^ self scan1].
	^ self reportLastMatch