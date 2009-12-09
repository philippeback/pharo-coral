old
parseAndInterpret: aStream 
	^ self interpret: (CoralParser parseScript: (self jumpIfBashScript: aStream))