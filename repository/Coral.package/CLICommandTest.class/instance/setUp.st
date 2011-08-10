running
setUp
	"example taken from http://rubydoc.info/gems/cri/2.0.2/file/README.md"
	
	command := (CLICommand named: 'dostuff')
		aliases: #('ds' 'stuff');
		summary: 'does stuff';
		description: 'This command does a lot of stuff. I really mean a lot.'.
		
	h := command option -'h' --'help';
		description: 'show help for this command';
		do: [ "display help then quit"].
	
	m := command option -'m' --'more';
		description: 'do even more stuff'.

	s := command option -'s' --'stuff'; any;
		 description: 'specify stuff to do'.
	
	command do: [
		]