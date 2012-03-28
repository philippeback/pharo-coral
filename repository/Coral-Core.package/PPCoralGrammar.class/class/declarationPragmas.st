accessing
declarationPragmas
	^ (PragmaCollector filter: [:pragma | pragma keyword = 'coralDeclaration']) reset collected