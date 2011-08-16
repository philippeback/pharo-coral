displaying-primitives
center: aString
	| spaces |
	spaces := (width - aString size) // 2.
	spaces = 0
		ifTrue: [ self display: aString ]
		ifFalse: [ self display: (String new: spaces withAll: Character space) , aString ]
	