testing
testScriptBash
	self shouldnt: [self parseAndInterpretString: '#!/bin/sh', String lf, '[
			Transcript show: ''Scrip shell 1 working'', String cr
			]'] raise: Error.
	
	self shouldnt: [self parseAndInterpretString: '#!/bin/sh', String cr, '[
			Transcript show: ''Script shell 2 working'', String cr
			]'] raise: Error.
	
	self shouldnt: [self parseAndInterpretString: '#!/bin/sh'] raise: Error