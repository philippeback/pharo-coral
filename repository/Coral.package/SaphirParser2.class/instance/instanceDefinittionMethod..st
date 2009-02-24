reduction actions
instanceDefinittionMethod: nodes

	^RBMethodScript new 
		rbMethodNode: nodes last;
		homeClass: (RBVariableNode new identifierToken: nodes first);
		instanceSide