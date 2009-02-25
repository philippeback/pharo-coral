generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(
		#(#binarySymbol '||' 6 )
		#(28 'class' 5 )
		#(28 'false' 24 )
		#(28 'nil' 23 )
		#(28 'true' 22 )
		#(29 'apicall:' 15 )
		#(29 'cdecl:' 16 )
		#(29 'module:' 14 )
		#(29 'primitive:' 1 )
	) do: 
				[:each | 
				(keywordMap at: each first ifAbsentPut: [Dictionary new]) at: (each at: 2)
					put: each last].
	^ keywordMap