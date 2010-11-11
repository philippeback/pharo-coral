script generation
generateCoralScript
	"self generateCoralScript"

	| str |
	str := FSDiskFilesystem current writeStreamOn: 'coral.sh'.
	str truncateTo: 0.
	str 
		nextPutAll: ('#! /bin/sh', String lf);
		nextPutAll: ('vm=''', Smalltalk vmFullPath, '''', String lf);
		nextPutAll: ('image=''', (Smalltalk getSystemAttribute: 1), '''', String lf, String lf);
		nextPutAll: 'for i in "$@"', String lf;
		nextPutAll: 'do', String lf;
		nextPutAll: (String tab, 'params="$params \"$i\""'), String lf;
		nextPutAll: 'done', String lf, String lf;
		nextPutAll: '"$vm" -headless "$image" "`pwd`/$1" -coralArgs "$params"', String lf;
		close