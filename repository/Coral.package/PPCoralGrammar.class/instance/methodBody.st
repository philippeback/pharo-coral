productions
methodBody
	^ $[ asParser token , self smalltalk	 pragmas , self smalltalk temporaries , self smalltalk pragmas , self smalltalk statements , $] asParser token