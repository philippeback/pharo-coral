private-parsing
parseScript

	| node result |
	result := OrderedCollection new.
	[self atEnd] whileFalse: [
	currentToken value = $[
		ifTrue: [
			self step.
			node := RBDoitScript body: (self parseStatements: false).
			currentToken value = $] ifFalse: [self parserError: ''']'' expected'].
			self step.]
		ifFalse: [currentToken isIdentifier ifTrue: [node := self parseDefinition]].
		result add: node].
	^ result