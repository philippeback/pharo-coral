reduction actions
callConvention: nodes
	| descriptorClass |
	descriptorClass := Smalltalk at: #ExternalFunction ifAbsent:[nil].
	^descriptorClass callingConventionFor: nodes first value.