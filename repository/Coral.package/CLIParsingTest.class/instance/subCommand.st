fixtures
subCommand
	^ (CLICommand named: 'bar')
		subcommands: { self command }