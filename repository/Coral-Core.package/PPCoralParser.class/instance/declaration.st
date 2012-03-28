productions
declaration
	^ PPValidatingParser
		on: super declaration
		block: [ :node | self validateDeclaration: node ]