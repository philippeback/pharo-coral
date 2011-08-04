script generation
generateCoralDebugScript
	"self generateCoralDebugScript"

	| str |
	str := FSFilesystem onDisk writeStreamOn: 'coralDebug.sh'.
	str truncateTo: 0.
	str 
		nextPutAll: ('#! /bin/sh', String lf);
		nextPutAll: ('vm=''', Smalltalk vmFullPath, '''', String lf);
		nextPutAll: ('image=''', (Smalltalk getSystemAttribute: 1), '''', String lf, String lf);
		nextPutAll: 'for i in "$@"', String lf;
		nextPutAll: 'do', String lf;
		nextPutAll: (String tab, 'params="$params \"$i\""'), String lf;
		nextPutAll: 'done', String lf, String lf;
		nextPutAll: '"$vm" "$image" "`pwd`/$1" -noquit -coralArgs "$params"', String lf;
		close