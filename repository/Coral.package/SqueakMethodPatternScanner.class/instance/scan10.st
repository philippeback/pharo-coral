generated-scanner
scan10
	self step.
	currentCharacter isDigit 
		ifTrue: 
			[
			[self recordMatch: #(7 9 ).
			self step.
			currentCharacter isDigit] 
					whileTrue.
			^ self reportLastMatch].
	^ self reportLastMatch