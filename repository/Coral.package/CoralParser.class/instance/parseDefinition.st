private-parsing
parseDefinition

	| className |
	className := currentToken.
	self step.
	^ currentToken value = '>>' 
		ifTrue: [
			self step.
			self parseInstanceDefinition: className]
		ifFalse: [currentToken value = 'class' ifFalse: [self parserError: 'class or >> expected'].
			self step.
			currentToken value = '>>' ifFalse: [self parserError: '>> expected'].
			self step.
			self parseClassDefinition: className].