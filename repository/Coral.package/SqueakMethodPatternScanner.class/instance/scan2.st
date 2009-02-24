generated-scanner
scan2
	self step.
	currentCharacter isDigit 
		ifTrue: 
			[
			[self recordMatch: #(10 ).
			self step.
			currentCharacter isDigit] 
					whileTrue.
			^ self reportLastMatch].
	^ self reportLastMatch