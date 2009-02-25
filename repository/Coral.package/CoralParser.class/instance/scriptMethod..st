reduction actions
scriptMethod: nodes
	
	nodes third selectorParts: nodes first first.
	nodes third arguments: nodes first last.
	nodes third classDefineIn: classParseIn.
	nodes third source: nodes third sourceText asString.
	^nodes third