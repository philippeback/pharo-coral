tests
testWhiteSpaceAfterClassName
	"self debug: #testWhiteSpaceAfterClassName"
	self parse: '
		CoralTestFixtureClass >> printOn: aStream
		[
			"<category: ''printing''>
			<authorInitials: ''him''>"
			aStream nextPutAll: ''bob''
		]'