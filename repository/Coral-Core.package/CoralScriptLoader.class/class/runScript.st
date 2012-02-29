initialize-release
runScript

	| script stream |
	script := ((SmalltalkImage current documentPath) ifNil:['']) convertFromSystemString.
	script isEmpty ifTrue: [^ self ].
	
	stream := FileStream readOnlyFileNamed: script.
	stream converter: (TextConverter newForEncoding: 'UTF-8').
	
	^ self runScript: stream