initialize-release
initialize
	"self initialize"	
	
	Smalltalk addToStartUpList: self.
	Smalltalk at: #AbstractLauncher ifPresent: [ :arg | (Smalltalk at: #AbstractLauncher) deactivate ].
	Smalltalk at: #CommandLine ifPresent: [ :arg | CodeLoader enableCommandLineHandling: false ]