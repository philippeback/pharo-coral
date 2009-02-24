interpreting
interpret: aCol
	
	Console openConsole.
	aCol do: [:each | self compiledMethods add: (each executeIt)].
	(class canPerform: #run) ifFalse:[self error:'Script must content a run method'].
	class new perform: #run.
	Console closeConsole