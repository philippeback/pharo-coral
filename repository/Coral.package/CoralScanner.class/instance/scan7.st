generated-scanner
scan7
	
	[self step.
	(currentCharacter between: $0 and: $9) or: 
			[(currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]]] 
			whileTrue.
	currentCharacter = $: 
		ifTrue: 
			[self recordMatch: #(33 ).
			self step.
			((currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan7].
			^ self reportLastMatch].
	^ self reportLastMatch