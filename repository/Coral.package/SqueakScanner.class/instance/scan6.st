generated-scanner
scan6
	self step.
	((currentCharacter between: $0 and: $9) 
		or: [currentCharacter between: $A and: $Z]) 
			ifTrue: 
				[
				[self recordMatch: #(19 ).
				self step.
				(currentCharacter between: $0 and: $9) 
					or: [currentCharacter between: $A and: $Z]] 
						whileTrue.
				currentCharacter = $. 
					ifTrue: 
						[self step.
						((currentCharacter between: $0 and: $9) 
							or: [currentCharacter between: $A and: $Z]) 
								ifTrue: 
									[
									[self recordMatch: #(19 ).
									self step.
									(currentCharacter between: $0 and: $9) 
										or: [currentCharacter between: $A and: $Z]] 
											whileTrue.
									currentCharacter = $e ifTrue: [^ self scan4].
									^ self reportLastMatch].
						^ self reportLastMatch].
				currentCharacter = $e ifTrue: [^ self scan4].
				^ self reportLastMatch].
	^ self reportLastMatch