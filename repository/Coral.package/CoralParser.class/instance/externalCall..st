reduction actions
externalCall: nodes
	| fn |
	Smalltalk at: #ExternalLibraryFunction ifPresent:[:xfn|
		fn := xfn name: nodes third
				module: nil 
				callType: nodes first
				returnType: nodes second
				argumentTypes: nodes fifth contents.
	].
	^ OrderedCollection with: (Pragma keyword: #primitive: arguments: #(120)) with: fn with: 120