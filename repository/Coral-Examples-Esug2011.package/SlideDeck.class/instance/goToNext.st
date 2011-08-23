displaying
goToNext
	[ self goToNextPartial ]
		doWhileTrue: [ (slides at: index) isPartial ]