productions
methodHeader
	^ (self smalltalk identifier , 'class' asParser  optional) token , '>>' asParser token , self smalltalk methodDeclaration