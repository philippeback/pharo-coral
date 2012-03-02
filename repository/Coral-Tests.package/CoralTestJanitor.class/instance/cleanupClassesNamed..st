running
cleanupClassesNamed: classNames
	| logging |
	logging := false.
	
	classNames do: [:name |
		Smalltalk at: name ifPresent:
			[:cls | cls isObsolete ifFalse: [ cls removeFromSystem: logging ] ] ].