displaying-content
title: aString
	self clearSlide.
	"self green: [ self center: aString ]."
	self green: [ OSProcess waitForCommand: 'figlet -f small "' , aString , '"' ].
	self margin: 2