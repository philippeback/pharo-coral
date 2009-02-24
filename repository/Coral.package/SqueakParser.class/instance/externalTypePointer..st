reduction actions
externalTypePointer: nodes

	| xType |
	xType := self externalTypeOn: nodes.
	xType ifNil:[^nodes].
	^OrderedCollection with: xType asPointerType with: nodes last