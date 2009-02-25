token handling
binarySymbol
	"Negative number takes precedence over binary symbol, so for example, '0@-1' means '0 @ -1', rather than '0 @- 1', which is how the scanner reads it. If the symbol is just $- and the next char is a digit, then the negative number token takes precedence and SqueakParser>>actionForCurrentToken converts it to a binary symbol. If there is space between $- and the digit, then it reaches here and we convert it to a negativeNumber token (and let SqueakParser>>actionForCurrentToken deal with it)."

	| string negPos prevReturnMatchBlock |
	string _ outputStream contents.
	string last = $- ifFalse: [
		matchActions _ {self binarySymbolId}.
		^ self createTokenFor: outputStream contents].

	stream peek ifNil: [
		matchActions _ {self binarySymbolId}.
		^ self createTokenFor: outputStream contents].

	stream peek isDigit ifTrue: [
		"Back up one and let scanner find negativeNumber token"
		outputStream skip: -1.
		stream skip: -1.
		matchActions _ {self binarySymbolId}.
		^ self createTokenFor: outputStream contents].

	(stream peek = $  and: [string size = 1]) ifFalse: [
		matchActions _ {self binarySymbolId}.
		^ self createTokenFor: outputStream contents].

	"Allow space between negative sign and number (wierd, but allowed in Smalltalk ANSI standard)"
	negPos _ stream position.
	[stream peek = $ ] whileTrue: [stream next].

	stream peek isDigit ifFalse: [
		stream position: negPos.
		matchActions _ {self binarySymbolId}.
		^ self createTokenFor: outputStream contents].

	"scan number but catch return and convert it to a negative number"
	prevReturnMatchBlock _ returnMatchBlock.
	returnMatchBlock _ [:token | 
		returnMatchBlock _ prevReturnMatchBlock.
		token id first = self numberId ifFalse: [self error: 'unexpected token'].
		token value: '-', token value
			start: token start - 1
			id: {self negativeNumberId}.
		returnMatchBlock value: token].
	self whitespace.  "eats whitespace and scans next token"