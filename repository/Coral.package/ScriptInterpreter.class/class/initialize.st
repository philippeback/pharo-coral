initialize-release
initialize
	"self initialize"	
	Smalltalk addToStartUpList: self.
	FileList registerFileReader: self.
	Preferences setPreference: #readDocumentAtStartup toValue: false