*Coral-Core
named: className superclass: superclassName instanceVariables: instVarSpec classVariables: classVarSpec category: categoryName
	<coralDeclaration>
	^ (Smalltalk at: superclassName)
		subclass: className
		instanceVariableNames: (' ' join: instVarSpec)
		classVariableNames: (' ' join: classVarSpec)
		poolDictionaries: ''
		category: categoryName