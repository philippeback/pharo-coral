animation
dropIn: aColumn
	| landing |

	landing := (heights at: aColumn) - 1.
	aColumn > 1
		ifTrue: [ landing := landing min: (heights at: aColumn - 1) - 1 ].
	aColumn < width
		ifTrue: [ landing := landing min: (heights at: aColumn + 1) - 1 ].

	heights at: aColumn put: landing.
	Console locate: (aColumn * 2 - 1) @ (landing); print: '  '.

	landing <= 0
		ifTrue: [ finished := true ]
	