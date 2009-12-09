testing
testWhiteSpaceAfterClassName
	"self debug: #testWhiteSpaceAfterClassName"
	self shouldnt: [PPCoralParser parse: '
		SandBox >> printOn: aStream
	[
		"<category: ''printing''>
		<authorInitials: ''him''>"
		aStream nextPutAll: bob
	]'
	] raise: Error.