accessing
parser
	^ parser ifNil: [
		parser := PPPredicateObjectParser
					matching: self shortForm asParser token / self longForm asParser token
					message: 'Option ' , self name , ' expected'.
		parameter ifNotNil: [ parser := parser , parameter ] ]