displaying-appearance
bigFiglet: aString
	^ OSProcess thisOSProcess waitForCommandOutput: 'figlet -d /opt/homebrew/share/figlet/fonts/bdffonts -f xtty -k "' , aString , '"'