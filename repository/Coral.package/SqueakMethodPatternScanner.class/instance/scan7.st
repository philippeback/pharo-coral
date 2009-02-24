generated-scanner
scan7
	self step.
	(currentCharacter isDigit or: [currentCharacter between: $A and: $Z]) 
		ifTrue: 
			[
			[self recordMatch: #(6 9 ).
			self step.
			currentCharacter isDigit or: [currentCharacter between: $A and: $Z]] 
					whileTrue.
			currentCharacter == $. 
				ifTrue: 
					[self step.
					(currentCharacter isDigit or: [currentCharacter between: $A and: $Z]) 
						ifTrue: 
							[
							[self recordMatch: #(6 9 ).
							self step.
							currentCharacter isDigit or: [currentCharacter between: $A and: $Z]] 
									whileTrue.
							currentCharacter == $e ifTrue: [^ self scan8].
							^ self reportLastMatch].
					^ self reportLastMatch].
			currentCharacter == $e ifTrue: [^ self scan8].
			^ self reportLastMatch].
	^ self reportLastMatch