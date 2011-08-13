productions
shebang
	^ '#!' asParser , (#newline asParser negate) star