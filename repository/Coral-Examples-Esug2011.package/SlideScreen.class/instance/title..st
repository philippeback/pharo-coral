displaying-content
title: aString
	| green |
	green := (Ansi fg: 2) , (Ansi bg: 2).
	self margin: 1.
	stream << (self
					ansiColorize: (self center: (self bigFiglet: aString))
					color: green).
	self margin: 2