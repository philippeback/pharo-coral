generated-scanner
scan6
	
	[self step.
	(currentCharacter between: $0 and: $9) or: 
			[(currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]]] 
			whileTrue.
	currentCharacter == $: 
		ifTrue: 
			[self recordMatch: #(17 ).
			self step.
			((currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan6].
			^ self reportLastMatch].
	^ self reportLastMatch