old
jumpIfBashScript: aStream
	
	(aStream peek =$#) ifTrue: [
		[| aChar | 
		 aChar := aStream next.
		(aChar = nil) or: [(aChar = Character lf) or: [aChar = Character cr]]] whileFalse].
	^aStream