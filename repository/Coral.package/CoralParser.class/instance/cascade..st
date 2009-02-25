reduction actions
cascade: nodes

	^ (nodes first isKindOf: RBMessageNode)
		ifTrue: [RBCascadeNode messages:
			{nodes first.
			 RBMessageNode new
				receiver: nodes first receiver
				selectorParts: nodes third first
				arguments: nodes third last}]
		ifFalse: [RBCascadeNode messages:
			(nodes first messages copyWith:
				(RBMessageNode new
					receiver: nodes first messages first receiver
					selectorParts: nodes third first
					arguments: nodes third last))]