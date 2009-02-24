accessing
contents

     | temp tempStream |
     temp := OrderedCollection with: nextValue.
	tempStream := stream contents.
     tempStream do: [:each | (selectBlock value: each) 
               ifTrue: [temp add: each]].
     ^temp