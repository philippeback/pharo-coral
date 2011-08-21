displaying-primitives
center: aString
	(Character lf split: aString)
		do: [ :each | self centerSingle: each ]
	