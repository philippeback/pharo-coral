generated-scanner
scan8
	self recordMatch: #(29 ).
	self step.
	((currentCharacter between: $A and: $Z) 
		or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan9].
	currentCharacter = $= 
		ifTrue: [^ self recordAndReportMatch: #variableAssignment].
	^ self reportLastMatch