accessing
descriptiveName
	| result |
	result := OrderedCollection new: 2.
	self hasShort ifTrue: [ result add: ('-' copyWith: short) ].
	self hasName ifTrue: [ result add: '--' , name ].
	^ $/ join: result