tests
testAccessIV
	"self debug: #testAccessIV"
	| c |
	self parse: '[
		Object < #CoralTestC1
			iv: ''bob'' ]'.
	self shouldnt: [c := Smalltalk at: #CoralTestC1] raise: KeyNotFound.
	
	self parse: '
		CoralTestC1>>initialize [
			<category: ''initialize release''>
			<authorInitials: ''him''>
			bob := ''Script test working'' ]'.
	self shouldnt: [c >> #initialize] raise: KeyNotFound.
	
	self parse: '
		CoralTestC1>> printOn: aStream [
			"<category: ''printing''>
			<authorInitials: ''him''>"
			aStream nextPutAll: bob ]'.
	self shouldnt: [c >> #printOn:] raise: KeyNotFound.
