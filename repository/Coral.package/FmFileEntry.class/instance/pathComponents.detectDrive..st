initialize-release
pathComponents: aCollection detectDrive: detectDrive
	| tokens firstToken  |
	tokens := aCollection.
	(detectDrive and: [self isDriveName: (firstToken := aCollection first)])
		ifTrue: [self drive: firstToken.
			self
				basicPathComponents: (tokens copyFrom: 2 to: tokens size)]
		ifFalse: [self basicPathComponents: tokens].

	pathComponents ifNotEmpty: [self name: pathComponents last]