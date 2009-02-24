generated-scanner
scan10
	self step.
	(currentCharacter between: $0 and: $9) 
		ifTrue: 
			[
			[self recordMatch: #(26 ).
			self step.
			currentCharacter between: $0 and: $9] 
					whileTrue.
			^ self reportLastMatch].
	currentCharacter = $- ifTrue: [^ self scan11].
	^ self reportLastMatch