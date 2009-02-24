as yet unclassified
parseAndInterpret: aStream

	^self interpret: (SaphirParser2 parseScript: (self jumpIfBashScript: aStream)) 