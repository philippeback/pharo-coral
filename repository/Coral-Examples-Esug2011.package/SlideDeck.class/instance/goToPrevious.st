displaying
goToPrevious
	[ self goToPreviousPartial ]
		doWhileTrue: [ (slides at: index) isPartial ]