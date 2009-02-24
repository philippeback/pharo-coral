accessing
classDefineIn

	ASTChecker new
		scope: Object parseScope;
		visitNode: self classNodeVar.	
	
	^self classNodeVar binding value