testing
testBangAlone
	"self debug: #testBangAlone"
	
	
	self shouldnt: [(PPCoralParser parse: '#!/bin/usr/coralNegated')] raise: Error.
	
	self shouldnt: [(PPCoralParser parse: '#!/bin/usr/coralNegated'     )] raise: Error
		
	