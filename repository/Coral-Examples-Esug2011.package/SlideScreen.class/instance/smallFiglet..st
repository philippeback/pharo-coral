displaying-appearance
smallFiglet: aString
	^ OSProcess thisOSProcess waitForCommandOutput: 'figlet -f small "' , aString , '"'