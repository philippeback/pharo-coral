arguments
getAllArgumentsButScriptName
	SmalltalkImage current extractMinusParameters at: #coralArgs ifPresent: [ :arg | ^ arg allButFirst ] ifAbsent: [ ^ OrderedCollection new ]