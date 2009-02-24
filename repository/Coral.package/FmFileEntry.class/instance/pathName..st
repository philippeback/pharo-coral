initialize-release
pathName: aString 
	| path tokens |
	path := aString asAbsolutePathName.
	tokens :=  path findTokens: FileDirectory slash.
	tokens ifEmpty: [^ nil].

	(self onUnix and: [path beginsWith: '/']) ifTrue: [^self pathComponents: tokens].

	(tokens size = 1) ifTrue: [ ^self pathName: (FmDirectoryEntry default concat: aString) pathName].

	self pathComponents: tokens