utilities
ansiColorize: aString colorMap: colorMap
	"Surround contiguous sequences of some characters in aString with ANSI color codes.
	colorMap is an Array of Associations mapping characters to the desired ANSI color number"
	
	^ colorMap inject: aString into: [ :img :map |
		| pattern |
		pattern := String with: map key with: $+.
		(RxMatcher forString: pattern)
			copy: img
			translatingMatchesUsing: [ :substring | map value , substring , Ansi sgrReset ] ]