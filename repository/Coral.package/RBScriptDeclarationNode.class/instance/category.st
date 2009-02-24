accessing
category

	self properties pragmas do:[:each | (each keyword = #category:) ifTrue: [^each arguments first]].
	^Categorizer default