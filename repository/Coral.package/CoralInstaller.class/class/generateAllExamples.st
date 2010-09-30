script generation
generateAllExamples

	(CoralScriptExamples class allMethodsInCategory: #'script examples') do: [ :selector | 
		self createFileNamed: selector asString, '.cst' withContents: (CoralScriptExamples perform: selector) 	
	]

