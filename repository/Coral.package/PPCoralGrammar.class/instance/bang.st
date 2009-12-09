productions
bang
	^ '#!' asParser , (#newline asParser negate) star