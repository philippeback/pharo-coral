validating declarations
validateDeclaration: aMessage
	^ self class declarationPragmas contains: [ :pragma |
		Halt now.
			pragma selector = aMessage selector
				and: [ pragma methodClass theNonMetaClass name asString = aMessage receiver name ] ]