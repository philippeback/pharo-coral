as yet unclassified
installBash
	"self installBash"
	| str |
	str := FSUnixFilesystem new writeStreamOn: 'coral.sh2'.
	str nextPutAll: '#! /bin/sh'.
	str cr.
	str nextPutAll: 'vm=''/Applications/Squeak/Squeak 4.2.2beta1U.app/Contents/MacOS/Squeak VM Opt''
	"$vm" -headless "coral.image" "`pwd`/$1"'.
	str close
