script generation
generateAllExamples
	"self generateAllExamples"
	(CoralScriptExamples class allMethodsInCategory: #'script examples') do: [ :selector | 
		|filename file|
		filename := self computeScriptNameFor: selector.
		file := self generateScript: selector to: filename.
		self giveExecutionRightToFileNamed: file pathString
	]

