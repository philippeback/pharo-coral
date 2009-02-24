generated-scanner
scanForToken
	self step.
	(currentCharacter <= Character backspace or: 
			[(currentCharacter between: (Character value: 14) and: (Character value: 31)) 
				or: [currentCharacter = $` or: [currentCharacter >= $]]]) 
		ifTrue: [^ self recordAndReportMatch: #(38 )].
	((currentCharacter between: $A and: $Z) 
		or: [currentCharacter between: $a and: $z]) 
			ifTrue: 
				[self recordMatch: #(22 38 ).
				self step.
				((currentCharacter between: $0 and: $9) or: 
						[(currentCharacter between: $A and: $Z) 
							or: [currentCharacter between: $a and: $z]]) 
					ifTrue: 
						[
						[self recordMatch: #(22 ).
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
			[self recordMatch: #(19 38 ).
			self step.
			(currentCharacter between: $0 and: $9) 
				ifTrue: 
					[
					[self recordMatch: #(19 ).
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
			[self recordMatch: #(38 ).
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
			[self recordMatch: #(17 38 ).
			self step.
			currentCharacter = $: ifTrue: [^ self recordAndReportMatch: #(18 )].
			^ self reportLastMatch].
	currentCharacter = $$ 
		ifTrue: 
			[self recordMatch: #(38 ).
			self step.
			currentCharacter <= $þ ifTrue: [^ self recordAndReportMatch: #(30 )].
			^ self reportLastMatch].
	currentCharacter = $' 
		ifTrue: 
			[self recordMatch: #(38 ).
			self step.
			currentCharacter ~= $' ifTrue: [^ self scan1].
			currentCharacter = $' ifTrue: [^ self scan2].
			^ self reportLastMatch].
	currentCharacter = $( ifTrue: [^ self recordAndReportMatch: #(2 38 )].
	currentCharacter = $) ifTrue: [^ self recordAndReportMatch: #(35 38 )].
	currentCharacter = $* 
		ifTrue: 
			[self recordMatch: #(12 25 38 ).
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
					[self recordMatch: #(20 ).
					self step.
					currentCharacter between: $0 and: $9] 
							whileTrue.
					currentCharacter = $. 
						ifTrue: 
							[self step.
							(currentCharacter between: $0 and: $9) 
								ifTrue: 
									[
									[self recordMatch: #(20 ).
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
										[self recordMatch: #(20 ).
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
															[self recordMatch: #(20 ).
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
	currentCharacter = $. ifTrue: [^ self recordAndReportMatch: #(31 38 )].
	currentCharacter = $: 
		ifTrue: 
			[self recordMatch: #(36 38 ).
			self step.
			((currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]) ifTrue: [^ self scan7].
			currentCharacter = $= ifTrue: [^ self recordAndReportMatch: #(26 )].
			^ self reportLastMatch].
	currentCharacter = $; ifTrue: [^ self recordAndReportMatch: #(37 38 )].
	currentCharacter = $< 
		ifTrue: 
			[self recordMatch: #(6 25 38 ).
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
			[self recordMatch: #(7 25 38 ).
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
	currentCharacter = $[ ifTrue: [^ self recordAndReportMatch: #(1 38 )].
	currentCharacter = $] ifTrue: [^ self recordAndReportMatch: #(33 38 )].
	currentCharacter = $^ ifTrue: [^ self recordAndReportMatch: #(4 38 )].
	currentCharacter = $_ ifTrue: [^ self recordAndReportMatch: #(26 38 )].
	currentCharacter = ${ ifTrue: [^ self recordAndReportMatch: #(5 38 )].
	currentCharacter = $| 
		ifTrue: 
			[self recordMatch: #(9 25 38 ).
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
	currentCharacter = $} ifTrue: [^ self recordAndReportMatch: #(34 38 )].
	^ self reportLastMatch