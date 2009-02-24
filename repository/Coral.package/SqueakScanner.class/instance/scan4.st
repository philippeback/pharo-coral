generated-scanner
scan4
	self step.
	(currentCharacter between: $0 and: $9) 
		ifTrue: 
			[
			[self recordMatch: #(19 ).
			self step.
			currentCharacter between: $0 and: $9] 
					whileTrue.
			^ self reportLastMatch].
	currentCharacter = $- ifTrue: [^ self scan5].
	^ self reportLastMatch