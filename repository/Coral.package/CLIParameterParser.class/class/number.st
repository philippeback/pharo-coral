factory
number
	^ self new
		setParser: (PPElementParser
					on: ($- asParser optional , #digit asParser plus , ($. asParser , #digit asParser plus) optional) token end
							==> [ :token | token value asNumber ]
					message: 'number expected');
		name: 'num'
		