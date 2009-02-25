private
isEmptyStatementId: id

	^ ((id = scanner periodId) and: [nodeStack isEmpty]) 
		or: [(id = scanner periodId) and: [(nodeStack last isKindOf: SmaCCToken) and: [nodeStack last id first = scanner periodId]]] 