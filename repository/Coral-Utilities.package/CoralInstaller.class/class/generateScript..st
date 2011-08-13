script generation
generateScript: aSelector
	self createFileNamed: aSelector asString, '.cst' withContents: (CoralScriptExamples perform: aSelector)