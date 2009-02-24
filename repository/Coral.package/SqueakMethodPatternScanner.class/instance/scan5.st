generated-scanner
scan5
	
	[self step.
	(currentCharacter between: $0 and: $9) or: 
			[(currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]]] 
			whileTrue.
	currentCharacter == $: 
		ifTrue: 
			[self recordMatch: #(14 ).
			self step.
			((currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan5].
			^ self reportLastMatch].
	^ self reportLastMatch