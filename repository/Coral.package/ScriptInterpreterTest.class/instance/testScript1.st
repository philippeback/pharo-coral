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
