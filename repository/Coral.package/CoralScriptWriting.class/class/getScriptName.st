arguments
getScriptName
	SmalltalkImage current extractMinusParameters at: #coralArgs ifPresent: [ :arg | ^ arg first ] ifAbsent: [ ^ String empty ]