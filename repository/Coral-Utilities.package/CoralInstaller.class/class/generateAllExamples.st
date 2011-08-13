script generation
generateAllExamples
	"self generateAllExamples"
	(CoralScriptExamples class allMethodsInCategory: #'script examples') do: [ :selector | 
		self generateScript: selector 	
	]

