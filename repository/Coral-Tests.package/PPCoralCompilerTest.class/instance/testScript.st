tests
testScript
	"self debug: #testScript"
	
	self parse: '[
		Object subclass: #CoralTestC1
			instanceVariableNames: ''bob''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: ''CoralTestP1''
		]

		CoralTestC1 >> initialize [
			<category: ''initialize release''>
			<authorInitials: ''him''>
			bob := ''Script test working''.
		]

		CoralTestC1 >> printOn: aStream [
			"<category: ''printing''>
			<authorInitials: ''him''>"
			aStream nextPutAll: bob
		]

		CoralTestC1 class >> dummy [
			<authorInitials: ''him''>
			^3
		]

		[ CoralTestC1 new printString 	]'.

	self shouldnt: (Smalltalk at: #CoralTestC1) raise: KeyNotFound.
	self assert: (Smalltalk at: #CoralTestC1) dummy = 3