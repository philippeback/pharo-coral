script generation
generateCoralScript
	"self generateCoralScript"

	self createWrapperNamed: 'coral.sh' withContents:
'#! /bin/sh
vm=''', Smalltalk vmFullPath, '''
image=''', (Smalltalk getSystemAttribute: 1), '''

for i in "$@"; do
	params="$params \"$i\""
done

"$vm" -headless "$image" "`pwd`/$1" -coralArgs "$params"
'
