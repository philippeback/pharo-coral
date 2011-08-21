displaying-primitives
centerSingle: aString
	| spaces |
	spaces := (width - aString size) // 2.
	^ spaces = 0
		ifTrue: [ aString ]
		ifFalse: [ (String new: spaces withAll: Character space) , aString ]
	