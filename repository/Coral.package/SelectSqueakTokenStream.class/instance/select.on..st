private
select: aBlock on: aStream

       selectBlock := aBlock.
       stream := aStream.
       atEnd := false.
       self next