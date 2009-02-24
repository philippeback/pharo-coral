*coral
readUpToNewLine
	
	"Answer a subcollection from the current access position through the last element
	of the receiver. This is slower than the method in StandardFileStream, but it
	works with pipes which always answer true to #atEnd."

	| newStream c |
	newStream := WriteStream on: (buffer1 species new: 100).
	[self atEnd not 
			and: [(c := self next).
				   c ~= Character cr and: [c ~= Character lf]]] 
		whileTrue: [newStream nextPut: c].
	^ newStream contents
	
	