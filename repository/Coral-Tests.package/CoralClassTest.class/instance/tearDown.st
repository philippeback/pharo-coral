running
tearDown
	createdPackages do: [:pkg |
		].
	createdClasses do: [:cls | | logging |
		logging := false.
		cls isObsolete ifFalse: [ cls removeFromSystem: logging ] ]