private
setContentsOf: aStream to: aStringOrBytes 
	| str |
	[str := aStream.
	aStringOrBytes isString ifFalse: [str binary].
	str nextPutAll: aStringOrBytes]
		ensure: [str
				ifNotNilDo: [:s | s close]]