testing
testScript
	"self debug: #testScript"
	
	self shouldnt: [PPCoralParser parse: '[
	Object subclass: #SaBox
		instanceVariableNames: ''bob''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: ''SandBox''
	]

	SaBox >> initialize
	[
		<category: ''initialize release''>
		<authorInitials: ''him''>
		bob := ''Script test working''.
	]

	SaBox >> printOn: aStream
	[
		"<category: ''printing''>
		<authorInitials: ''him''>"
		aStream nextPutAll: bob
	]

	SaBox class >> dummy
	[
		<authorInitials: ''him''>
		^3
	]

	[
	SaBox new printString.
	]'] raise: Error.

	self assert: (Smalltalk at: #SaBox ifAbsent:[nil]) notNil.
	self assert: (Smalltalk at: #SaBox ifAbsent:[nil])  dummy = 3