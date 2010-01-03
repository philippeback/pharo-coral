*coral
hasKey: aKey
	"Returns true if the key was passed in argument when launching the vm."
	
	self extractParameters 
		at: aKey ifAbsent: [^ false].
	^ true.