script examples
scriptForScriptTestCoralScriptWriting
	"CoralInstaller generateScript: #scriptForScriptTestCoralScriptWriting"

	^ '[
	| fs os |
	
	fs := FSDiskFilesystem currentClass createDefault.
	os := ThisOSProcess thisOSProcess.
	
	os chDir: (fs referenceTo: ''.'') asAbsolute asString.
	CoralInstaller generateScript: #scriptTestCoralScriptWriting.
	
	os waitForCommand: ''./coral.sh scriptTestCoralScriptWriting.cst arg1 arg2 -minus1 arg3 -minus2 -minus3 arg4 arg5''.
	
	(fs referenceTo: ''./scriptTestCoralScriptWriting.cst'') delete.
	
	Console << (CoralScriptWriting getScriptName, '' done.'')
]	
'