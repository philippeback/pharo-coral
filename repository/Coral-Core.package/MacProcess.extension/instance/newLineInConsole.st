*Coral-Core
newLineInConsole
	
	self isUnix 
			ifTrue:[^String lf] 
			ifFalse:[^String cr]