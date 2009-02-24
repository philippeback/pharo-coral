reduction actions
callConvention: nodes
	| descriptorClass |
	descriptorClass := Smalltalk at: #ExternalFunction ifAbsent:[^nil].
	^OrderedCollection with:(descriptorClass callingConventionFor: nodes first value) with: nodes first.