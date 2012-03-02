tests
testScript1
	"self debug: #testScript1"

	self parse: '[
		Object subclass: #CoralTestC1
			instanceVariableNames: ''bob''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: ''CoralTestP1'' ]'.
	self shouldnt: [Smalltalk at: #CoralTestC1] raise: KeyNotFound.
	
	self parse: 'CoralTestC1>>initialize [bob := ''Script test working'']'.
	self parse: 'CoralTestC1>>bob [^ bob ]'.

	self assert: (Smalltalk at: #CoralTestC1) new bob = 'Script test working'
