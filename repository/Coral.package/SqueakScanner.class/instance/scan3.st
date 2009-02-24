generated-scanner
scan3
	self step.
	(currentCharacter between: $0 and: $9) 
		ifTrue: 
			[
			[self recordMatch: #(19 ).
			self step.
			currentCharacter between: $0 and: $9] 
					whileTrue.
			currentCharacter = $e ifTrue: [^ self scan4].
			currentCharacter = $s ifTrue: [^ self scan5].
			^ self reportLastMatch].
	^ self reportLastMatch