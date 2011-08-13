testing scripts
scriptTestCoralScriptWriting
	"Don't generate this script, but use scriptForScriptTestCoralScriptWriting"

	^ '[ TestCase < #TempCoralClass ]

TempCoralClass>>testGetAllArguments
[
	| args |
	
	args := CoralScriptWriting getAllArguments.
	
	self assert: (args size = 4).
	self assert: ((args at: #*) = #(''scriptTestCoralScriptWriting.cst'' arg1 arg2)).
	self assert: ((args at: #minus1) = #(arg3)).
	self assert: ((args at: #minus2) = #()).
	self assert: ((args at: #minus3) = #(arg4 arg5)).
]

TempCoralClass>>testGetAllArgumentsWithoutMinus
[
	| args |
	
	args := CoralScriptWriting getAllArgumentsWithoutMinus.
	
	self assert: (args size = 3).
	self assert: ((args at:1) = ''scriptTestCoralScriptWriting.cst'').
	self assert: ((args at:2) = ''arg1'').
	self assert: ((args at:3) = ''arg2'').
	
	self assert: (args = (CoralScriptWriting getAllArguments at: #*)).
]

TempCoralClass>>testGetAllArgumentsWithoutMinusButScriptName
[
	| args |
	
	args := CoralScriptWriting getAllArgumentsWithoutMinusButScriptName.
	
	self assert: (args size = 2).
	self assert: ((args at:1) = ''arg1'').
	self assert: ((args at:2) = ''arg2'').
	
	self assert: (args = (CoralScriptWriting getAllArguments at: #*) allButFirst).
	self assert: (args = CoralScriptWriting getAllArgumentsWithoutMinus allButFirst).
]

TempCoralClass>>testGetScriptName
[
	| arg |
	
	arg := CoralScriptWriting getScriptName.
	
	self assert: (arg = ''scriptTestCoralScriptWriting.cst'').
	self assert: (arg = (CoralScriptWriting getAllArguments at: #*) first).
	self assert: (arg = CoralScriptWriting getAllArgumentsWithoutMinus first).
]

[
	| flag |
	
	flag := true.
	TempCoralClass selectors do: [ :each |
		[ TempCoralClass debug: each ] on: TestFailure do: [ Console printNl: ''Test failure: '', each. flag := false ]
	].

	flag ifTrue: [ Console printNl: ''All tests were successfully passed!''  ]
]'
