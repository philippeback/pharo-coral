accessing
stderr
	stderrTerminalInstance ifNil: [
		stderrTerminalInstance := CLIVTermOutputDriver new.
		stderrTerminalInstance outStream: PFile stderr ].
	^ stderrTerminalInstance