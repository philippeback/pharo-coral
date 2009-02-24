instance creation
selectComment: aTokenStream

	^self basicNew initialize; select: [:each | each notEaten and: [each isComment]] on: aTokenStream; yourself
	
	