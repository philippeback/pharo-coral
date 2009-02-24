generation
execute

	| cm |
	[doIt verifyIn: nil doItScope] on: SemanticWarning do: [:ex | "ex correctIn: self"].
	cm := doIt generate.
	cm selector: #DoIt.
	block := BlockClosure new
		env: nil;
		method: cm;
		yourself.
	^block value