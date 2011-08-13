productions
methodBody
	^ $[ asParser token trim ,
		self smalltalk pragmas ,
		self smalltalk temporaries ,
		self smalltalk pragmas ,
		self smalltalk statements ,
		$] asParser token trim