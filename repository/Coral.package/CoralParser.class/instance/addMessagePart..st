reduction actions
addMessagePart: nodes

	^ {nodes first first copyWith: nodes second.
	   nodes first second copyWith: nodes third}