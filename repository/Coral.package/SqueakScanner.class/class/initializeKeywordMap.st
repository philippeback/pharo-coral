generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(
		#(#binarySymbol '||' 8 )
		#(22 'false' 15 )
		#(22 'nil' 16 )
		#(22 'true' 10 )
		#(23 'apicall:' 14 )
		#(23 'cdecl:' 11 )
		#(23 'module:' 13 )
		#(23 'primitive:' 3 )
	) do: 
				[:each | 
				(keywordMap at: each first ifAbsentPut: [Dictionary new]) at: (each at: 2)
					put: each last].
	^ keywordMap