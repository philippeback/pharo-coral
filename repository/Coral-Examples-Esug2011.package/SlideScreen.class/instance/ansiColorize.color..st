displaying-primitives
ansiColorize: aString color: ansiColor
	"Surround contiguous sequences of some characters in aString with ANSI color codes.
	colorMap is an Array of Associations mapping characters to the desired ANSI color number"
	
	^ (RxMatcher forString: '#+')
		copy: aString
		translatingMatchesUsing: [ :substring | ansiColor , substring , Ansi sgrReset ]