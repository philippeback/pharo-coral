productions
methodHeader
	^ self smalltalk identifier , 'class' asParser token optional , '>>' asParser token , self smalltalk methodDeclaration