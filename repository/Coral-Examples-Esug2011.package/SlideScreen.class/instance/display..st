displaying-primitives
display: aString
	margin timesRepeat: stream newline.
	self resetMargin.
	stream << aString; newline