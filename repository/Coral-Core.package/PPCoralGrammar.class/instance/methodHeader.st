productions
methodHeader

	^ self smalltalk identifierToken ,
		'class' asParser token trim optional ,
		'>>' asParser token trim ,
		self smalltalk methodDeclaration