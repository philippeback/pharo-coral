initialization
initialize 
	super initialize.
	termcap := CLITermcap instance.
	outStream := PFile stdout. 
	self reset.