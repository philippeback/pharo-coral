accessing
scopeClass
	
	self classSide ifFalse:[^self classDefineIn]
				  ifTrue:[^self classDefineIn class]