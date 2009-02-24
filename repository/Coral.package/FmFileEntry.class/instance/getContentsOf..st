private
getContentsOf: aStream
	| str conts |
	[str := aStream. 
	conts := str contents]
		ensure: [str
				ifNotNilDo: [:s | s close]].
	^ conts