services
parseAndInterpret: aStream in: class

	^self interpret: (SaphirParser parseScript: (self jumpIfBashScript: aStream) in: class) in: class