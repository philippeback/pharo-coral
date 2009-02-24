executing
executeIt

	| method |
	method := CompiledMethodWithNode 
			generateMethodFromNode: self 
			trailer: self class defaultMethodTrailer.
	self scopeClass 
			logMethodSource: self source 
			forMethodWithNode: method
			inCategory: self category 
			withStamp: (Utilities changeStampWithInitials: self authorInitials) 
			notifying: [^nil].
	self scopeClass 
			addAndClassifySelector: method selector 
			withMethod: method method 
			inProtocol: self category 
			notifying: [^nil].
	self scopeClass 
			instanceSide noteCompilationOf: method selector 
			meta: self scopeClass isClassSide.
	(self classSide and:[ method method selector = #initialize])
		ifTrue:[self classDefineIn initialize].
	^method
	