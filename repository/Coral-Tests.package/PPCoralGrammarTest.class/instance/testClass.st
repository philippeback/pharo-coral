tests
testClass

	self 
		parse: 'Class named: #Foo
					superclass: #Object
					instanceVariables: #(a b c)
					category: ''SandBox'''
		rule: #class
		
	