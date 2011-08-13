tests
testWhiteSpaceAfterClassName
	"self debug: #testWhiteSpaceAfterClassName"
	self shouldnt: [PPCoralParser parse: '
		Point >> printOn: aStream
	[
		"<category: ''printing''>
		<authorInitials: ''him''>"
		aStream nextPutAll: bob
	]'
	] raise: Error.