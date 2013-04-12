initialize-release
runScript
	CoralScriptWriting resetArguments.
	
	(commandLine allFilesWithExtension: '.coral') do: [ :script |
		script asFileReference readStreamDo: [ :stream |
			self evaluateStream: stream ] ].
	
	self exitSuccess