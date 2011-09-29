initialization
initialize 
	super initialize.
	termcap := CLITermcap instance.
	self reset.