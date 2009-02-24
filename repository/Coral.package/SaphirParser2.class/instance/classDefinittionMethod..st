reduction actions
classDefinittionMethod: nodes

	^RBMethodScript new 
		rbMethodNode: nodes last;
		homeClass: (RBVariableNode new identifierToken: nodes first);
		classSide