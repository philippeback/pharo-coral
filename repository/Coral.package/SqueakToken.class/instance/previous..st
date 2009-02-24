accessing
previous: aToken

	aToken ifNotNil:[aToken next: self].
	previous := aToken