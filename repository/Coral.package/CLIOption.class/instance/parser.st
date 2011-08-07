accessing
parser
	^ parser ifNil: [ | choices |
		choices := OrderedCollection new: 2.
		self shortForm ifNotNilDo: [ :it | choices add: it asParser ].
		self longForm ifNotNilDo: [ :it | choices add: it asParser ].
		parser := PPPredicateObjectParser
					matching: (PPChoiceParser withAll: choices) token end
					message: 'Option ' , self name , ' expected'.
		parameter ifNotNil: [ parser := parser , parameter ].
		parser ]