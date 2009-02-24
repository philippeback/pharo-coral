generated-scanner
scan8
	self step.
	currentCharacter isDigit 
		ifTrue: 
			[
			[self recordMatch: #(8 9 ).
			self step.
			currentCharacter isDigit] 
					whileTrue.
			^ self reportLastMatch].
	currentCharacter == $- 
		ifTrue: 
			[self step.
			currentCharacter isDigit 
				ifTrue: 
					[
					[self recordMatch: #(8 9 ).
					self step.
					currentCharacter isDigit] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	^ self reportLastMatch