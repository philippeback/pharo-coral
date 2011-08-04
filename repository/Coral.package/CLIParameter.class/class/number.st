factory
number
	^ self new
		setParser: (PPPredicateObjectParser matching: #digit asParser plus message: 'number expected');
		name: 'num'
		