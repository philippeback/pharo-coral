reduction actions
externalCall: nodes

	| fn |

	Smalltalk at: #ExternalLibraryFunction ifPresent:[:xfn|
		fn := xfn name: nodes third
				module: nil 
				callType: nodes first first
				returnType: nodes second first
				argumentTypes: nodes fifth first contents.
	].
	^ OrderedCollection with: (Pragma keyword: #primitive: arguments: #(120)) with: fn with: 120  with: nodes first second with: nodes fifth second