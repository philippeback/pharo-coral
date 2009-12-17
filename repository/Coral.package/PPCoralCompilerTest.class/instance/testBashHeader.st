testing
testBashHeader
	"self debug: #testBashHeader"
	
	Smalltalk at: #FooBar put: 666.
	self shouldnt: [PPCoralParser parse: 
		'#!/bin/sh
		[ Smalltalk at: #FooBar put: 33. ]
		'] raise: Error.
	self assert: (Smalltalk at: #FooBar) =33.
	Smalltalk removeKey: #FooBar