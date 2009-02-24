generation
generate: trailer

	scope := self scopeClass parseScope.
	[self verifyIn: self scopeClass]
			 on: SemanticWarning do: [:ex | ex correctIn: self parserCorrection].
	^super generate: trailer