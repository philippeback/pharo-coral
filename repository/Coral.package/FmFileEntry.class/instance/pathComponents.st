accessing
pathComponents
	pathComponents ifNil: [pathComponents _ OrderedCollection new].
	^pathComponents