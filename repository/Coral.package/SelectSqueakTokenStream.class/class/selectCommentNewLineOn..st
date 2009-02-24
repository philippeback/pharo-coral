instance creation
selectCommentNewLineOn: aTokenStream

	^self basicNew initialize; select: [:each | each notEaten and: [each isComment or: [each isNewLine]]] on: aTokenStream; yourself
	
	