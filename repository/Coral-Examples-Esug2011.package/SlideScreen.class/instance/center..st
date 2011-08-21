displaying-primitives
center: aString
	^ Character lf join: (
		(Character lf split: aString)
			collect: [ :each | self centerSingle: each ])
	