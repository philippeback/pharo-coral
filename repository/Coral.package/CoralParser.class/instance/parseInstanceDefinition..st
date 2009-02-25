private-parsing
parseInstanceDefinition: aToken

	| methodNode pragmas |
	methodNode := self parseMessagePattern.
	pragmas := self parseResourceTag.
	currentToken value = $[ ifFalse: [self parserError: '[ expected'].
	self step.
	methodNode body: (self parseStatements: true);
		pragmas: pragmas.
	currentToken value = $] ifFalse: [self parserError: '] expected'].
	self step.
	^ RBMethodScript new 
		rbMethodNode: methodNode;
		homeClass: (RBVariableNode new identifierToken: aToken);
		instanceSide