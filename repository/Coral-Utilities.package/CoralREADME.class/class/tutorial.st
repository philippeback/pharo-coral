fileExample
tutorial

	"str := FSUnixFilesystem new writeStreamOn: 'giffle'.
str nextPutAll: 'zzzzzzzzzz'.
str close

FSDiskFilesystem current workingDirectory allChildren

FSDiskFilesystem current workingDirectory allEntries


FSDiskFilesystem current root -> / 
FSDiskFilesystem current root class -> FSReference

|working cache|
working := FSDiskFilesystem current working.
cache := working / 'package-cache'.
cache entry creationdate
	
	
	(FSDiskFilesystem current childrenAt: FSDiskFilesystem current workingDirectory )
	
	FSPath / 'plonk' / 'leaffile'. 
		/plonk/leaffile
	FSPath * 'plonk' / 'leaffile'. 
		 plonk/leaffile
	
	
	
	
	"