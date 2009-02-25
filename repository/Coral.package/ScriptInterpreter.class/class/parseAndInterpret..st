script interpreter
parseAndInterpret: aStream 
	^ self interpret: (CoralParser parseScript: (self jumpIfBashScript: aStream))