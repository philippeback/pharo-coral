productions
method

	^ super method ==> [ :nodes |
			"waiting for the new compiler. For the moment we ask the old compiler to recompile everything"
					nodes first key compile:
						(nodes first value
								pragmas: nodes second second , nodes second fourth;
								body: (self smalltalk 
												build: nodes second third
												sequence: nodes second fifth);
										yourself) formattedCode ]