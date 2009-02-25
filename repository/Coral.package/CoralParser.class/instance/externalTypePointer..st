reduction actions
externalTypePointer: nodes
	| xType |
	xType := self externalTypeOn: nodes.
	xType ifNil:[^nodes].
	^xType asPointerType