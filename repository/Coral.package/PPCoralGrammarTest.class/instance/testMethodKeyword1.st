testing
testMethodKeyword1
	"self debug: #testMethodKeyword1"

	self 
		parse: 'Point>>coralSetX: x y:y
					 [^ self class new setX: x ; setY: y ]'
		rule: #method
		
	