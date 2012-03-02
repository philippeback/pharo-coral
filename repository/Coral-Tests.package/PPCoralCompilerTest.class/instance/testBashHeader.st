tests
testBashHeader
	"self debug: #testBashHeader"
	
	Smalltalk at: #CoralTestG1 put: 666.
	
	self parse: 
		'#!/bin/sh
		[ Smalltalk at: #CoralTestG1 put: 33. ]
		'.
	self assert: (Smalltalk at: #CoralTestG1) = 33.
	
	Smalltalk removeKey: #CoralTestG1