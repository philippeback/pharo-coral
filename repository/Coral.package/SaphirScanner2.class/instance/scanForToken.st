generated-scanner
scanForToken
	self step.
	(currentCharacter <= Character backspace or: 
			[(currentCharacter between: (Character value: 14) and: (Character value: 31)) 
				or: [currentCharacter = $` or: [currentCharacter >= $]]]) 
		ifTrue: [^ self recordAndReportMatch: #(41 )].
	((currentCharacter between: $A and: $Z) 
		or: [currentCharacter between: $a and: $z]) 
			ifTrue: 
				[self recordMatch: #(25 41 ).
				self step.
				((currentCharacter between: $0 and: $9) or: 
						[(currentCharacter between: $A and: $Z) 
							or: [currentCharacter between: $a and: $z]]) 
					ifTrue: 
						[
						[self recordMatch: #(25 ).
						self step.
						(currentCharacter between: $0 and: $9) or: 
								[(currentCharacter between: $A and: $Z) 
									or: [currentCharacter between: $a and: $z]]] 
								whileTrue.
						currentCharacter = $: ifTrue: [^ self scan8].
						^ self reportLastMatch].
				currentCharacter = $: ifTrue: [^ self scan8].
				^ self reportLastMatch].
	(currentCharacter = $! or: 
			[(currentCharacter between: $% and: $&) or: 
					[(currentCharacter between: $+ and: $,) or: 
							[currentCharacter = $/ or: 
									[currentCharacter = $= or: 
											[(currentCharacter between: $? and: $@) 
												or: [currentCharacter = $\ or: [currentCharacter = $~]]]]]]]) 
		ifTrue: 
			[self recordMatch: #binarySymbol.
			self step.
			(currentCharacter = $! or: 
					[(currentCharacter between: $% and: $&) or: 
							[(currentCharacter between: $* and: $-) or: 
									[currentCharacter = $/ or: 
											[(currentCharacter between: $< and: $@) or: 
													[currentCharacter = $\ 
														or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]) 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter = $! or: 
							[(currentCharacter between: $% and: $&) or: 
									[(currentCharacter between: $* and: $-) or: 
											[currentCharacter = $/ or: 
													[(currentCharacter between: $< and: $@) or: 
															[currentCharacter = $\ 
																or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	(currentCharacter between: $0 and: $9) 
		ifTrue: 
			[self recordMatch: #(22 41 ).
			self step.
			(currentCharacter between: $0 and: $9) 
				ifTrue: 
					[
					[self recordMatch: #(22 ).
					self step.
					currentCharacter between: $0 and: $9] 
							whileTrue.
					currentCharacter = $. ifTrue: [^ self scan3].
					currentCharacter = $e ifTrue: [^ self scan4].
					currentCharacter = $r ifTrue: [^ self scan6].
					currentCharacter = $s ifTrue: [^ self scan5].
					^ self reportLastMatch].
			currentCharacter = $. ifTrue: [^ self scan3].
			currentCharacter = $e ifTrue: [^ self scan4].
			currentCharacter = $r ifTrue: [^ self scan6].
			currentCharacter = $s ifTrue: [^ self scan5].
			^ self reportLastMatch].
	((currentCharacter between: Character tab and: Character cr) 
		or: [currentCharacter = Character space]) 
			ifTrue: 
				[self recordMatch: #whitespace.
				self step.
				((currentCharacter between: Character tab and: Character cr) 
					or: [currentCharacter = Character space]) 
						ifTrue: 
							[
							[self recordMatch: #whitespace.
							self step.
							(currentCharacter between: Character tab and: Character cr) 
								or: [currentCharacter = Character space]] 
									whileTrue.
							^ self reportLastMatch].
				^ self reportLastMatch].
	currentCharacter = $" 
		ifTrue: 
			[self recordMatch: #(41 ).
			self step.
			currentCharacter ~= $" 
				ifTrue: 
					[
					[self step.
					currentCharacter ~= $"] whileTrue.
					currentCharacter = $" ifTrue: [^ self recordAndReportMatch: #comment].
					^ self reportLastMatch].
			currentCharacter = $" ifTrue: [^ self recordAndReportMatch: #comment].
			^ self reportLastMatch].
	currentCharacter = $# 
		ifTrue: 
			[self recordMatch: #(18 41 ).
			self step.
			currentCharacter = $: ifTrue: [^ self recordAndReportMatch: #(17 )].
			^ self reportLastMatch].
	currentCharacter = $$ 
		ifTrue: 
			[self recordMatch: #(41 ).
			self step.
			currentCharacter <= $þ ifTrue: [^ self recordAndReportMatch: #(33 )].
			^ self reportLastMatch].
	currentCharacter = $' 
		ifTrue: 
			[self recordMatch: #(41 ).
			self step.
			currentCharacter ~= $' ifTrue: [^ self scan1].
			currentCharacter = $' ifTrue: [^ self scan2].
			^ self reportLastMatch].
	currentCharacter = $( ifTrue: [^ self recordAndReportMatch: #(6 41 )].
	currentCharacter = $) ifTrue: [^ self recordAndReportMatch: #(38 41 )].
	currentCharacter = $* 
		ifTrue: 
			[self recordMatch: #(16 28 41 ).
			self step.
			(currentCharacter = $! or: 
					[(currentCharacter between: $% and: $&) or: 
							[(currentCharacter between: $* and: $-) or: 
									[currentCharacter = $/ or: 
											[(currentCharacter between: $< and: $@) or: 
													[currentCharacter = $\ 
														or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]) 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter = $! or: 
							[(currentCharacter between: $% and: $&) or: 
									[(currentCharacter between: $* and: $-) or: 
											[currentCharacter = $/ or: 
													[(currentCharacter between: $< and: $@) or: 
															[currentCharacter = $\ 
																or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = $- 
		ifTrue: 
			[self recordMatch: #binarySymbol.
			self step.
			(currentCharacter = $! or: 
					[(currentCharacter between: $% and: $&) or: 
							[(currentCharacter between: $* and: $-) or: 
									[currentCharacter = $/ or: 
											[(currentCharacter between: $< and: $@) or: 
													[currentCharacter = $\ 
														or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]) 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter = $! or: 
							[(currentCharacter between: $% and: $&) or: 
									[(currentCharacter between: $* and: $-) or: 
											[currentCharacter = $/ or: 
													[(currentCharacter between: $< and: $@) or: 
															[currentCharacter = $\ 
																or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]] 
							whileTrue.
					^ self reportLastMatch].
			(currentCharacter between: $0 and: $9) 
				ifTrue: 
					[
					[self recordMatch: #(23 ).
					self step.
					currentCharacter between: $0 and: $9] 
							whileTrue.
					currentCharacter = $. 
						ifTrue: 
							[self step.
							(currentCharacter between: $0 and: $9) 
								ifTrue: 
									[
									[self recordMatch: #(23 ).
									self step.
									currentCharacter between: $0 and: $9] 
											whileTrue.
									currentCharacter = $e ifTrue: [^ self scan10].
									currentCharacter = $s ifTrue: [^ self scan11].
									^ self reportLastMatch].
							^ self reportLastMatch].
					currentCharacter = $e ifTrue: [^ self scan10].
					currentCharacter = $r 
						ifTrue: 
							[self step.
							((currentCharacter between: $0 and: $9) 
								or: [currentCharacter between: $A and: $Z]) 
									ifTrue: 
										[
										[self recordMatch: #(23 ).
										self step.
										(currentCharacter between: $0 and: $9) 
											or: [currentCharacter between: $A and: $Z]] 
												whileTrue.
										currentCharacter = $. 
											ifTrue: 
												[self step.
												((currentCharacter between: $0 and: $9) 
													or: [currentCharacter between: $A and: $Z]) 
														ifTrue: 
															[
															[self recordMatch: #(23 ).
															self step.
															(currentCharacter between: $0 and: $9) 
																or: [currentCharacter between: $A and: $Z]] 
																	whileTrue.
															currentCharacter = $e ifTrue: [^ self scan10].
															^ self reportLastMatch].
												^ self reportLastMatch].
										currentCharacter = $e ifTrue: [^ self scan10].
										^ self reportLastMatch].
							^ self reportLastMatch].
					currentCharacter = $s ifTrue: [^ self scan11].
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = $. ifTrue: [^ self recordAndReportMatch: #(34 41 )].
	currentCharacter = $: 
		ifTrue: 
			[self recordMatch: #(39 41 ).
			self step.
			((currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan7].
			currentCharacter = $= ifTrue: [^ self recordAndReportMatch: #(29 )].
			^ self reportLastMatch].
	currentCharacter = $; ifTrue: [^ self recordAndReportMatch: #(40 41 )].
	currentCharacter = $< 
		ifTrue: 
			[self recordMatch: #(4 28 41 ).
			self step.
			(currentCharacter = $! or: 
					[(currentCharacter between: $% and: $&) or: 
							[(currentCharacter between: $* and: $-) or: 
									[currentCharacter = $/ or: 
											[(currentCharacter between: $< and: $@) or: 
													[currentCharacter = $\ 
														or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]) 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter = $! or: 
							[(currentCharacter between: $% and: $&) or: 
									[(currentCharacter between: $* and: $-) or: 
											[currentCharacter = $/ or: 
													[(currentCharacter between: $< and: $@) or: 
															[currentCharacter = $\ 
																or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = $> 
		ifTrue: 
			[self recordMatch: #(9 28 41 ).
			self step.
			(currentCharacter = $! or: 
					[(currentCharacter between: $% and: $&) or: 
							[(currentCharacter between: $* and: $-) or: 
									[currentCharacter = $/ or: 
											[(currentCharacter between: $< and: $@) or: 
													[currentCharacter = $\ 
														or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]) 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter = $! or: 
							[(currentCharacter between: $% and: $&) or: 
									[(currentCharacter between: $* and: $-) or: 
											[currentCharacter = $/ or: 
													[(currentCharacter between: $< and: $@) or: 
															[currentCharacter = $\ 
																or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = $[ ifTrue: [^ self recordAndReportMatch: #(11 41 )].
	currentCharacter = $] ifTrue: [^ self recordAndReportMatch: #(10 36 41 )].
	currentCharacter = $^ ifTrue: [^ self recordAndReportMatch: #(5 41 )].
	currentCharacter = $_ ifTrue: [^ self recordAndReportMatch: #(29 41 )].
	currentCharacter = ${ ifTrue: [^ self recordAndReportMatch: #(14 41 )].
	currentCharacter = $| 
		ifTrue: 
			[self recordMatch: #(2 28 41 ).
			self step.
			(currentCharacter = $! or: 
					[(currentCharacter between: $% and: $&) or: 
							[(currentCharacter between: $* and: $-) or: 
									[currentCharacter = $/ or: 
											[(currentCharacter between: $< and: $@) or: 
													[currentCharacter = $\ 
														or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]) 
				ifTrue: 
					[
					[self recordMatch: #binarySymbol.
					self step.
					currentCharacter = $! or: 
							[(currentCharacter between: $% and: $&) or: 
									[(currentCharacter between: $* and: $-) or: 
											[currentCharacter = $/ or: 
													[(currentCharacter between: $< and: $@) or: 
															[currentCharacter = $\ 
																or: [currentCharacter = $| or: [currentCharacter = $~]]]]]]]] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = $} ifTrue: [^ self recordAndReportMatch: #(37 41 )].
	^ self reportLastMatch