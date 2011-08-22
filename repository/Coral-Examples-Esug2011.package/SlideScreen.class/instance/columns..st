displaying-appearance
columns: aCollection
	^ (OSProcess thisOSProcess
				command: 'column -c ' , width asString
				input: (Character lf join: aCollection))
			output