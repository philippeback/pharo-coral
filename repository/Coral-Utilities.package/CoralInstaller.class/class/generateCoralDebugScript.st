script generation
generateCoralDebugScript
	"self generateCoralDebugScript"

	self createWrapperNamed: 'coralDebug.sh' withContents:
'#! /bin/sh
vm=''', Smalltalk vmFullPath, '''
image=''', (Smalltalk imageName), '''

for i in "$@"; do
	params="$params \"$i\""
done

"$vm" "$image" "`pwd`/$1" -noquit -coralArgs "$params"
'
