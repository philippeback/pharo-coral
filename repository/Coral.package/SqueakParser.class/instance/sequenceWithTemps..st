reduction actions
sequenceWithTemps: nodes

	nodes second ifNotEmpty: [^ (RBSequenceNode
					temporaries: nodes first first
					statements: nodes second) firstToken: nodes first second; yourself]
				ifEmpty:[^ (RBSequenceNode
					temporaries: nodes first first
					statements: nodes second) 
						firstToken: nodes first second;
						lastToken:nodes first third]