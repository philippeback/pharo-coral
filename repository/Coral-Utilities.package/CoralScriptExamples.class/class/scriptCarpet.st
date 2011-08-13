script examples
scriptCarpet
		"generates a carpet with random colors"

^'[
	Console resetAllAttributes.
	Console eraseScreen.

	(1 to: 80) do: [ :x | 
		(1 to: 20) do: [ :y |
			Console displayAttributes: { ((10 atRandom) + 29) . 7 . ((10 atRandom) + 39) }.
			Console plot: x @ y.
		]
	].
	
	Console resetAllAttributes.

]'