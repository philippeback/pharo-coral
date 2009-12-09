productions
methodHeader
	^ super methodHeader map: [ :className :metaclass :separator :methodDecl |
		| class |
		class := Smalltalk classNamed: className value.
		metaclass isNil ifFalse: [ class := class class ].
		class -> methodDecl ]