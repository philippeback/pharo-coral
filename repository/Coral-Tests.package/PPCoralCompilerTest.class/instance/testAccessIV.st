tests
testAccessIV
	"self debug: #testAccessIV"

	self shouldnt: [PPCoralParser parse: '[
	Object < #SaBox 
		iv: ''bob'' 
	]'
	] raise: Error.

	self shouldnt: [PPCoralParser parse: '
		SaBox>>initialize
		[
		<category: ''initialize release''>
		<authorInitials: ''him''>
		bob := ''Script test working'']'
	] raise: Error.

	self shouldnt: [PPCoralParser parse: '
		SaBox>> printOn: aStream
	[
		"<category: ''printing''>
		<authorInitials: ''him''>"
		aStream nextPutAll: bob
	]'
	] raise: Error.

