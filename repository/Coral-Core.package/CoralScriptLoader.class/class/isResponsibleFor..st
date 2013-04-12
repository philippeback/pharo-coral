accessing
isResponsibleFor: aCommandLine
	(aCommandLine hasFileWithExtension: '.coral')
		ifTrue: [ ^ true ].
	^ super isResponsibleFor: aCommandLine