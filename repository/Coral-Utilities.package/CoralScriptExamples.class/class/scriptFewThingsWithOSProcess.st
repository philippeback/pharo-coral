script examples
scriptFewThingsWithOSProcess
	^
'"This script does nothing useful ... but it shows a couple of things you can use while scripting"

[
	| process |
	
	process := OSProcess thisOSProcess.
	
	Console << ''Let''''s take a look at many points of OSProcess!'' << String lf.
	Console << ''------------------------------------------------------------'' << String lf << String lf.
	
	Console << ''Environment variables:'' << String lf.
	Console << ''------'' << String lf.
	process environment associationsDo: [ :each | Console << each key << '' = '' << each value << String lf ].
	
	Console << String lf << ''You can run shell commands. Here is "ls -la *.cst":'' << String lf.
	Console << ''------'' << String lf.
	process waitForCommand: ''ls -la *.cst''.
	
	Console << String lf << ''You can change the working directory.'' << String lf.
	Console << ''------'' << String lf..
	Console << ''pwd: ''.
	process waitForCommand: ''pwd''.
	Console << ''Changing working directory for /'' << String lf.
	process chDir: ''/''.
	Console << ''pwd: ''.
	process waitForCommand: ''pwd''.
	Console << ''ls:'' << String lf.
	process waitForCommand: ''ls''.

	Console << String lf << CoralScriptWriting getScriptName << '' done.''
]
'