accessing
category

	^((rbMethodNode pragmas collect: [:rbPragma | rbPragma pragma]) 
		detect: [:pragma | pragma keyword = #category:] ifNone: [Pragma default]) arguments first