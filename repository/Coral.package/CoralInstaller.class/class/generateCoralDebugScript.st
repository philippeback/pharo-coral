script generation
generateCoralDebugScript
	
	self createFileNamed:  'coraldb.sh' withContents: 
	'#! /bin/sh
vm="', Smalltalk vmFullPath , '"
"$vm" coral.image "`pwd`/$1" -noquit'
