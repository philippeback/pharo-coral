displaying-primitives
centerSingle: aString
	| spaces |
	spaces := (width - aString size) // 2.
	spaces = 0
		ifTrue: [ stream << aString; newline ]
		ifFalse: [ stream << (String new: spaces withAll: Character space) << aString; newline ]
	