as yet unclassified
setUp
	"example taken from http://rubydoc.info/gems/cri/2.0.2/file/README.md"
	
	dostuff := (CLICommand named: 'dostuff')
		aliases: #('ds' 'stuff');
		summary: 'does stuff';
		description: 'This command does a lot of stuff. I really mean a lot.'.
		
	dostuff option
		short: $h; long: 'help';
		description: 'show help for this command';
		do: [ "display help then quit"].
	
	dostuff option
		short: $m; long: 'more';
		description: 'do even more stuff'.

	dostuff option
		short: $s; long: 'stuff';
		description: 'specify stuff to do';
		parameter: CLIParameter any.
	
	dostuff onRunDo: []