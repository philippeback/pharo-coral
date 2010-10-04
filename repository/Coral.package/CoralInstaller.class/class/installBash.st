as yet unclassified
installBash
	"self installBash"
	| str |
	str := FSDiskFilesystem current writeStreamOn: 'coral.sh'.
	str truncateTo: 0.
	str 
		nextPutAll: '#! /bin/sh';
		nextPutAll: String lf;
		nextPutAll: 'vm=''';
		nextPutAll: Smalltalk vmFullPath;
		nextPutAll: '''';
		nextPutAll: String lf;
		nextPutAll: 'image=''';
		nextPutAll: (Smalltalk getSystemAttribute: 1);
		nextPutAll: '''';
		nextPutAll: String lf;
		nextPutAll: String lf;
		nextPutAll: '"$vm" -headless "$image" "`pwd`/$1" -coralArgs "$@"';
		nextPutAll: String lf;
		close
