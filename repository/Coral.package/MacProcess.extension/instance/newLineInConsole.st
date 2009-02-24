*coral
newLineInConsole
	
	self isUnix 
			ifTrue:[^String lf] 
			ifFalse:[^String cr]