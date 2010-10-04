arguments
getAllArguments
	^ SmalltalkImage current extractMinusParameters at: #coralArgs ifAbsent: [ OrderedCollection new ]
	