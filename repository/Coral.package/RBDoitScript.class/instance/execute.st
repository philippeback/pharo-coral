generation
execute

	| cm |
	[doIt verifyIn: nil class parseScope instanceScope] on: SemanticWarning do: [:ex | "ex correctIn: self"].
	cm := doIt generate.
	cm selector: #DoIt.
	^ (nil class parseScope instanceScope) executeMethod: cm