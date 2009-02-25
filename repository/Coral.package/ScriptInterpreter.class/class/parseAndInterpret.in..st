services
parseAndInterpret: aStream in: class 
	^ self 
		interpret: (CoralParser 
				parseScript: (self jumpIfBashScript: aStream)
				in: class)
		in: class