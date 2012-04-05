productions
declaration
	^ (PPValidatingParser
			on: super declaration
			block: [ :node | self validateDeclaration: node ])
		==> [ :node | Compiler evaluate: node formattedCode ]