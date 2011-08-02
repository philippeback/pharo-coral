as yet unclassified
asParser
	^ super asParser ,
		($= asParser / #space asParser star) ,
		argumentParser