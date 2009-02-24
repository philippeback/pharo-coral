script interpreter
parseAndInterpret: aStream

	^self interpret: (SaphirParser parseScript: (self jumpIfBashScript: aStream)) 