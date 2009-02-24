instance creation
selectCommentNewLineWithPipeOn: aTokenStream

	^self basicNew initialize; select: [:each | each notEaten and: [each isComment or: [each isNewLine] or: [each value = '|']]] on: aTokenStream; yourself
	
	