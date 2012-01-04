script generation
generateScript: aSelector to: filename
	^self createFileNamed: filename withContents: '#!/usr/bin/env coral', String lf, (CoralScriptExamples perform: aSelector)