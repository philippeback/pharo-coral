generated-scanner
scanForToken
	self step.
	(currentCharacter <= Character backspace or: 
			[(currentCharacter between: (Character value: 14) and: (Character value: 31)) 
				or: 
					[currentCharacter == $# or: 
							[currentCharacter == $^ 
								or: [currentCharacter == $` or: [currentCharacter >= $]]]]]) 
		ifTrue: [^ self recordAndReportMatch: #(28 )].
	((currentCharacter between: $A and: $Z) 
		or: [currentCharacter between: $a and: $z]) 
			ifTrue: 
				[self recordMatch: #(12 28 ).
				self step.
				((currentCharacter between: $0 and: $9) or: 
						[(currentCharacter between: $A and: $Z) 
							or: [currentCharacter between: $a and: $z]]) 
					ifTrue: 
						[
						[self recordMatch: #(12 ).
						self step.
						(currentCharacter between: $0 and: $9) or: 
								[(currentCharacter between: $A and: $Z) 
									or: [currentCharacter between: $a and: $z]]] 
								whileTrue.
						currentCharacter == $: ifTrue: [^ self scan11].
						^ self reportLastMatch].
				currentCharacter == $: ifTrue: [^ self scan11].
				^ self reportLastMatch].
	(currentCharacter == $! or: 
			[(currentCharacter between: $% and: $&) or: 
					[(currentCharacter between: $* and: $,) or: 
							[currentCharacter == $/ or: 
									[(currentCharacter between: $< and: $@) 
										or: [currentCharacter == $\ or: [currentCharacter == $~]]]]]]) 
		ifTrue: 
			[self recordMatch: #binarySymbol.
			self step.
			currentCharacter isSpecial 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter isSpecial] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter isDigit 
		ifTrue: 
			[self recordMatch: #(5 9 28 ).
			self step.
			currentCharacter isDigit 
				ifTrue: 
					[
					[self recordMatch: #(5 9 ).
					self step.
					currentCharacter isDigit] 
							whileTrue.
					currentCharacter == $. ifTrue: [^ self scan9].
					currentCharacter == $e ifTrue: [^ self scan8].
					currentCharacter == $r ifTrue: [^ self scan7].
					currentCharacter == $s ifTrue: [^ self scan10].
					^ self reportLastMatch].
			currentCharacter == $. ifTrue: [^ self scan9].
			currentCharacter == $e ifTrue: [^ self scan8].
			currentCharacter == $r ifTrue: [^ self scan7].
			currentCharacter == $s ifTrue: [^ self scan10].
			^ self reportLastMatch].
	(currentCharacter isSeparator 
		or: [currentCharacter == (Character value: 11)]) 
			ifTrue: 
				[self recordMatch: #whitespace.
				self step.
				(currentCharacter isSeparator 
					or: [currentCharacter == (Character value: 11)]) 
						ifTrue: 
							[
							[self recordMatch: #whitespace.
							self step.
							currentCharacter isSeparator 
								or: [currentCharacter == (Character value: 11)]] 
									whileTrue.
							^ self reportLastMatch].
				^ self reportLastMatch].
	currentCharacter == $" 
		ifTrue: 
			[self recordMatch: #(28 ).
			self step.
			currentCharacter ~~ $" 
				ifTrue: 
					[
					[self step.
					currentCharacter ~~ $"] whileTrue.
					^ self recordAndReportMatch: #comment].
			currentCharacter == $" ifTrue: [^ self recordAndReportMatch: #comment].
			^ self reportLastMatch].
	currentCharacter == $$ 
		ifTrue: 
			[self recordMatch: #(28 ).
			self step.
			^ self recordAndReportMatch: #(20 )].
	currentCharacter == $' 
		ifTrue: 
			[self recordMatch: #(28 ).
			self step.
			currentCharacter ~~ $' ifTrue: [^ self scan3].
			currentCharacter == $' ifTrue: [^ self scan4].
			^ self reportLastMatch].
	currentCharacter == $( ifTrue: [^ self recordAndReportMatch: #(4 28 )].
	currentCharacter == $) ifTrue: [^ self recordAndReportMatch: #(25 28 )].
	currentCharacter == $- 
		ifTrue: 
			[self recordMatch: #binarySymbol.
			self step.
			currentCharacter isSpecial 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter isSpecial] 
							whileTrue.
					^ self reportLastMatch].
			currentCharacter isDigit 
				ifTrue: 
					[
					[self recordMatch: #(10 ).
					self step.
					currentCharacter isDigit] 
							whileTrue.
					currentCharacter == $. 
						ifTrue: 
							[self step.
							currentCharacter isDigit 
								ifTrue: 
									[
									[self recordMatch: #(10 ).
									self step.
									currentCharacter isDigit] 
											whileTrue.
									currentCharacter == $e ifTrue: [^ self scan1].
									currentCharacter == $s ifTrue: [^ self scan2].
									^ self reportLastMatch].
							^ self reportLastMatch].
					currentCharacter == $e ifTrue: [^ self scan1].
					currentCharacter == $r 
						ifTrue: 
							[self step.
							(currentCharacter isDigit or: [currentCharacter between: $A and: $Z]) 
								ifTrue: 
									[
									[self recordMatch: #(10 ).
									self step.
									currentCharacter isDigit or: [currentCharacter between: $A and: $Z]] 
											whileTrue.
									currentCharacter == $. 
										ifTrue: 
											[self step.
											(currentCharacter isDigit or: [currentCharacter between: $A and: $Z]) 
												ifTrue: 
													[
													[self recordMatch: #(10 ).
													self step.
													currentCharacter isDigit or: [currentCharacter between: $A and: $Z]] 
															whileTrue.
													currentCharacter == $e ifTrue: [^ self scan1].
													^ self reportLastMatch].
											^ self reportLastMatch].
									currentCharacter == $e ifTrue: [^ self scan1].
									^ self reportLastMatch].
							^ self reportLastMatch].
					currentCharacter == $s ifTrue: [^ self scan2].
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter == $. ifTrue: [^ self recordAndReportMatch: #(21 28 )].
	currentCharacter == $: 
		ifTrue: 
			[self recordMatch: #(26 28 ).
			self step.
			((currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan6].
			currentCharacter == $= ifTrue: [^ self recordAndReportMatch: #(16 )].
			^ self reportLastMatch].
	currentCharacter == $; ifTrue: [^ self recordAndReportMatch: #(27 28 )].
	currentCharacter == $[ ifTrue: [^ self recordAndReportMatch: #(1 28 )].
	currentCharacter == $] ifTrue: [^ self recordAndReportMatch: #(23 28 )].
	currentCharacter == $_ ifTrue: [^ self recordAndReportMatch: #(16 28 )].
	currentCharacter == ${ ifTrue: [^ self recordAndReportMatch: #(2 28 )].
	currentCharacter == $| 
		ifTrue: 
			[self recordMatch: #(3 15 28 ).
			self step.
			currentCharacter isSpecial 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter isSpecial] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter == $} ifTrue: [^ self recordAndReportMatch: #(24 28 )].
	^ self reportLastMatch