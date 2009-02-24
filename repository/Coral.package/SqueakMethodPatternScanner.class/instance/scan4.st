generated-scanner
scan4
	self recordMatch: #(11 ).
	self step.
	currentCharacter == $' ifTrue: [^ self scan3].
	^ self reportLastMatch