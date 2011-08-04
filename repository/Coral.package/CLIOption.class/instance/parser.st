accessing
parser
	^ parser ifNil: [ | choice |
		choice := PPChoiceParser withAll: #().
		self shortForm ifNotNilDo: [ :it | choice := choice / it asParser token ].
		self longForm ifNotNilDo: [ :it | choice := choice / it asParser token ].
		parser := PPPredicateObjectParser
					matching: choice
					message: 'Option ' , self name , ' expected'.
		parameter ifNotNil: [ parser := parser , parameter ].
		parser ]