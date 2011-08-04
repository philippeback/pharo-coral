running
setUp
	super setUp.
	
	"flag := CommandLineFlag new
		description: 'Play the xylophone';
		name: 'xylophone';
		short: $x.
	option := CommandLineOption new
		description: 'Miraculously guess what to do with the argument';
		name: 'oops';
		short: $o;
		argumentParser: #word asParser plus"