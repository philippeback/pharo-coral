factory
integer
	^ self new
		setParser: (PPElementParser
					on: #digit asParser plus token end ==> [ :token | token value asNumber ]
					message: 'positive integer expected');
		name: 'num'
		