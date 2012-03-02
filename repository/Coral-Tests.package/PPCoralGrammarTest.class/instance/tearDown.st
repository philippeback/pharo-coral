running
tearDown
	createdClasses do: [:cls | | logging |
		logging := false.
		cls isObsolete ifFalse: [ cls removeFromSystem: logging ] ]