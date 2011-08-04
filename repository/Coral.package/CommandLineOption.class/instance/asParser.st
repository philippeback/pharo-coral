converting
asParser
	^ super asParser ,
		($= asParser / #space asParser star) ,
		(argumentParser / (PPFailingParser message: 'Option ' , self descriptiveName , ' expects an argument.'))