displaying-content
logo: aString
	| orange |
	orange := (Ansi fg: 9) , (Ansi bg: 9).
	self margin: 5.
	stream << (self
					ansiColorize: (self center: (self bigFiglet: aString))
					color: orange).
	self margin: 5