generated-scanner
scan11
	self recordMatch: #(13 ).
	self step.
	((currentCharacter between: $A and: $Z) 
		or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan5].
	currentCharacter == $= 
		ifTrue: [^ self recordAndReportMatch: #variableAssignment].
	^ self reportLastMatch