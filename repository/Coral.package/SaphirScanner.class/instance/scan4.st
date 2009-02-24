generated-scanner
scan4
	self step.
	(currentCharacter between: $0 and: $9) 
		ifTrue: 
			[
			[self recordMatch: #(25 ).
			self step.
			currentCharacter between: $0 and: $9] 
					whileTrue.
			^ self reportLastMatch].
	currentCharacter = $- ifTrue: [^ self scan5].
	^ self reportLastMatch