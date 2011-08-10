comparing
= anObject
	(anObject isKindOf: self class) ifFalse: [ ^ false ].
	^ specification = anObject specification
		and: [ parameters = anObject parameters ]