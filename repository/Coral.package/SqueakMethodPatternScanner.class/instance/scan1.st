generated-scanner
scan1
	self step.
	currentCharacter isDigit 
		ifTrue: 
			[
			[self recordMatch: #(10 ).
			self step.
			currentCharacter isDigit] 
					whileTrue.
			^ self reportLastMatch].
	currentCharacter == $- ifTrue: [^ self scan2].
	^ self reportLastMatch