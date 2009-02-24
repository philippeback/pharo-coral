generating
execute

	| method scope |
	ASTChecker new
		scope: nil parseScope;
		visitNode: self homeClass.
	classDefinedIn := self homeClass binding value.
	isClassSide 
		ifTrue: [scope := classDefinedIn class parseScope]
		ifFalse:[scope := classDefinedIn parseScope].

	[rbMethodNode verifyIn: scope] on: SemanticWarning do: [:ex | "ex correctIn: self"].
	rbMethodNode generate.
	method := CompiledMethodWithNode 
			generateMethodFromNode: rbMethodNode 
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
	(isClassSide and:[ method method selector = #initialize])
		ifTrue:[self classDefineIn initialize].
	^method