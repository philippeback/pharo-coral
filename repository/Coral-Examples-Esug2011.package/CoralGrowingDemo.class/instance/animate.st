animation
animate
	| left right |
	left := right := width atRandom.
	[ finished ] whileFalse: [ | where |
		where := (left to: right) atRandom.
		self dropIn: where.
		left := (left min: where - 1) max: 1.
		right := (right max: where + 1) min: width.
		delay ifNotNil: [ delay wait ]
	]