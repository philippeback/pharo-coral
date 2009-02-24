initialize
initialize
	"self initialize"
	
	| scanner |
	super initialize.
	scanner := SqueakScanner new.
	DicTokens := Dictionary new.
	DicTokens at: scanner colonId put: 'colon'.
	DicTokens at: scanner binarySymbolId put: 'binary symbol'.
	DicTokens at: scanner nameId put: 'variable'.
	DicTokens at: scanner negativeNumberId put: 'negative number'.
	DicTokens at: scanner periodId put: 'period'.
	DicTokens at: scanner rightBoxBracketsId put: 'right box bracket'.
	DicTokens at: scanner rightCurlyBracketsId put: 'right curly brackets'.
	DicTokens at: scanner rightParenthesesId put: 'right parentheses'.
	DicTokens at: scanner stringId put: 'string'.
	DicTokens at: scanner multikeywordId put: 'multi keyword'.
	DicTokens at: scanner keywordId put: 'keyword'.
	DicTokens at: scanner characterId put: 'character'.
	DicTokens at: scanner assignmentId put: 'assignment'