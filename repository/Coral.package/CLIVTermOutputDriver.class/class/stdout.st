accessing
stdout
	stdoutTerminalInstance ifNil: [
		stdoutTerminalInstance := CLIVTermOutputDriver with: PFile stdout ].
	^ stdoutTerminalInstance.