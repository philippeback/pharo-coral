running
setUp
	"example taken from http://rubydoc.info/gems/cri/2.0.2/file/README.md"
	environment := CLIEnvironment in: nil out: String new writeStream err: String new writeStream.
	
	command := (CLICommand named: 'dostuff')
		aliases: #('ds' 'stuff');
		summary: 'does stuff';
		description: 'This command does a lot of stuff. I really mean a lot.'.
		
	h := command option -'h' --'help';
		description: 'show help for this command';
		do: [ :cmd |
			cmd err << cmd help.
			cmd exitSuccess ].
	
	m := command option -'m' --'more';
		description: 'do even more stuff'.

	s := command option -'s' --'stuff'; any;
		 description: 'specify stuff to do'.
	
	command do: [ :cmd | |stuff|
		stuff := (cmd atOptionNamed: #stuff) ifNil: [ 'generic stuff' ].
		cmd << 'Doing ' , stuff , '!'.
		(cmd hasOptionNamed: #more)
			ifTrue: [ cmd << 'Doing it even more!' ]
	]