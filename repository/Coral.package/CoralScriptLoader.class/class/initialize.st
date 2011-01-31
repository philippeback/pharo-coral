initialize-release
initialize
	"self initialize"	
	
	Smalltalk addToStartUpList: self.
	"FileList registerFileReader: self."
	
	"Preferences setPreference: #readDocumentAtStartup toValue: false."
	"for now we do not want the ProjectLauncher to grab the file"
	"Preferences readDocumentAtStartupSetting"
	"Preferences readDocumentAtStartupSetting: false" "Old pref system"
	AbstractLauncher readDocumentAtStartup: false.