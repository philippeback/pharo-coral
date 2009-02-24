generated-scanner
scan9
	self step.
	currentCharacter isDigit 
		ifTrue: 
			[
			[self recordMatch: #(5 9 ).
			self step.
			currentCharacter isDigit] 
					whileTrue.
			currentCharacter == $e ifTrue: [^ self scan8].
			currentCharacter == $s ifTrue: [^ self scan10].
			^ self reportLastMatch].
	^ self reportLastMatch