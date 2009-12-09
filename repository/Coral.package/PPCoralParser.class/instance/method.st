productions
method
	^ super method ==> [ :nodes |
		"waiting for the new compiler. For the moment we ask the old compiler to recompile everything"
		(Smalltalk classNamed: nodes first first value)
			compile: 
			(nodes first third
				propertyAt: #class put: (Smalltalk classNamed: nodes first first value);
				pragmas: nodes second second , nodes second fourth;
				body: (self smalltalk 
							build:  nodes second third 
							sequence: nodes second fifth);
				yourself) formattedCode
			]