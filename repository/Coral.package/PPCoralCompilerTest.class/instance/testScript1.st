testing
testScript1
	"self debug: #testScript1"

	self shouldnt: [PPCoralParser parse: '[
	Object subclass: #SaBox
		instanceVariableNames: ''bob''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: ''SandBox''
	]'
	] raise: Error.

	self shouldnt: [PPCoralParser parse: '
		SaBox>>initialize
		[bob := ''Script test working'']'
	] raise: Error.

	PPCoralParser parse: 'SaBox>>bob
		[^ bob ]'.
	self assert: (Smalltalk at: #SaBox) new bob = 'Script test working'
