private
externalTypeOn: aNode
	| xType descriptorClass |
	descriptorClass := Smalltalk at: #ExternalFunction ifAbsent:[^nil].
	xType := descriptorClass atomicTypeNamed: aNode first value.
	xType == nil ifTrue:["Look up from class scope"
		Symbol hasInterned: aNode first value ifTrue:[:sym|
			xType := descriptorClass structTypeNamed: sym]].
	xType == nil ifTrue:[
		"Raise an error if user is there"
		self interactive ifTrue:[^nil].
		"otherwise go over it silently"
		xType := descriptorClass forceTypeNamed: aNode first value].
	^xType.