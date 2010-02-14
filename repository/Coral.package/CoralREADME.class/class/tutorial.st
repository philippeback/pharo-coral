fileExample
tutorial

	"FSDiskFilesystem current root -> / 
	FSDiskFilesystem current root class -> FSReference
	
	FSDiskFilesystem current childrenAt: FSDiskFilesystem current workingDirectory 
		-> Array of FSReference
	FSDiskFilesystem current childrenAt: '/Users/ducasse/Workspace/FirstCircle/ActiveResearch/Pharo/Pharo'
		-> Array of FSReference
		
	FSDiskFilesystem current createDirectory: '/Users/ducasse/Workspace/FirstCircle/ActiveResearch/Pharo/Pharo/TestFS'
	
	FSDiskFilesystem current createDirectory: (FSDiskFilesystem current workingDirectory / 'TestFS2')
	
	
	(FSDiskFilesystem current childrenAt: FSDiskFilesystem current workingDirectory )
	
	FSPath / 'plonk' / 'leaffile'. 
		/plonk/leaffile
	FSPath * 'plonk' / 'leaffile'. 
		 plonk/leaffile
	
	
	
	
	"