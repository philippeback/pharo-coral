accessing
next
     | temp |
     temp := nextValue.
     stream do: [:each | (selectBlock value: each) 
               ifTrue: [nextValue := each.  ^temp]].
     atEnd := true.
	nextValue := nil.
     ^temp