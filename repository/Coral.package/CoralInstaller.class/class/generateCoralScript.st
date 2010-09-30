script generation
generateCoralScript

	self createFileNamed:  'coral.sh' withContents: '#! /bin/sh

vm="', Smalltalk vmFullPath,'"

"$vm" -headless "coral.image" "`pwd`/$1"'


