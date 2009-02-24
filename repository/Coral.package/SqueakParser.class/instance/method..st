reduction actions
method: nodes

	^ RBMethodNode new
		selectorParts: nodes first first
		arguments: nodes first last;
		body: nodes second