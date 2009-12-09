productions
methodHeader
^ self smalltalk identifierToken , 'class' asParser token optional , '>>' asParser token , self smalltalk methodDeclaration