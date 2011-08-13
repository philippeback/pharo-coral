factory
relativeInteger
	^ self new setParser:
		(PPElementParser
				on: ($- asParser optional , #digit asParser plus) token end ==> [ :token | token value asNumber ]
				message: 'relative integer expected');
			name: 'num'
		