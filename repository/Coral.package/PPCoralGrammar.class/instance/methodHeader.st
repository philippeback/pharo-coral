productions
methodHeader
	^ (self smalltalk identifier token , 'class' asParser token optional) token , '>>' asParser token , self smalltalk methodDeclaration