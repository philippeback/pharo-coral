tests
testWhiteSpaceAfterClassName
	"self debug: #testWhiteSpaceAfterClassName"
	self shouldnt: [PPCoralParser parse: '
		CoralTestFixtureClass >> printOn: aStream
	[
		"<category: ''printing''>
		<authorInitials: ''him''>"
		aStream nextPutAll: ''bob''
	]'
	] raise: Error.