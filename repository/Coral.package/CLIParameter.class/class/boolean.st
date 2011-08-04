factory
boolean
	^ self new
		setParser: (PPPredicateObjectParser anyOf: #('true' 'TRUE' 'false' 'FALSE' 'yes' 'YES' 'no' 'NO'));
		name: 'bool'
		