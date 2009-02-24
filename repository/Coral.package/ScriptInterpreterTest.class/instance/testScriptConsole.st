testing
testScriptConsole

	self shouldnt: [self parseAndInterpretString: '#!/bin/sh', String lf, '[
			Console print: ''Scrip shell 1 working'', String cr
			]'] raise: Error.
	
	self shouldnt: [self parseAndInterpretString: '#!/bin/sh', String lf, '[
			Console printError: ''Scrip shell error working'', String cr
			]'] raise: Error.
	
	self shouldnt: [self parseAndInterpretString: '#!/bin/sh', String lf, '[
			Console read
			]'] raise: Error