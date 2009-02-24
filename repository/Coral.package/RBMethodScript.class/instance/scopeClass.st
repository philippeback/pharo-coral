accessing
scopeClass

	^isClassSide ifTrue: [classDefinedIn class]
		ifFalse: [classDefinedIn]