reduction actions
messageSend: nodes

	^ RBMessageNode new
		receiver: nodes first
		selectorParts: nodes second first
		arguments: nodes second last