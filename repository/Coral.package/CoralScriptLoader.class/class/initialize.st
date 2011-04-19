initialize-release
initialize
	"self initialize"	
	
	Smalltalk addToStartUpList: self.
	Smalltalk at: #AbstractLauncher ifPresent: [ (Smalltalk at: #AbstractLauncher) deactivate ]