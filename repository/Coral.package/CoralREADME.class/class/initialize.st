as yet unclassified
initialize
	| info |
	super initialize.
	info := SHWorkspace new.
	info contents: self readMe.
	info openLabel: 'README'