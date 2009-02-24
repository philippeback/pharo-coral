utilities
parseAndInterpretString: aString

	^ ScriptInterpreter parseAndInterpret: (ReadStream on: aString)
	