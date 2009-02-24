generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(
		#(25 'class' 7 )
		#(25 'false' 20 )
		#(25 'nil' 21 )
		#(25 'true' 19 )
		#(26 'apicall:' 12 )
		#(26 'cdecl:' 13 )
		#(26 'module:' 15 )
		#(26 'primitive:' 3 )
		#(#binarySymbol '>>' 8 )
		#(#binarySymbol '||' 1 )
	) do: 
				[:each | 
				(keywordMap at: each first ifAbsentPut: [Dictionary new]) at: (each at: 2)
					put: each last].
	^ keywordMap