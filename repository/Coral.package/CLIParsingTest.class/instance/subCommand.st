fixtures
subCommand
	^ (CLICommand named: 'bar')
		subCommands: { self command }