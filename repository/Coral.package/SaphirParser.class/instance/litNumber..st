reduction actions
litNumber: nodes

	| str num |
	str _ nodes first value readStream.
	num _ Number readFrom: str.
	str atEnd ifFalse: [
		currentToken _ nil.
		scanner position: scanner position - (str originalContents size - str position) + 1.
		self reportErrorMessage: 'Digit out of range'].
	^ RBLiteralNode
		literalToken: nodes first
		value: num