file modification
giveExecutionRightToFileNamed: fileName
	OSProcess command: 'chmod u+x "' , fileName , '"'
	