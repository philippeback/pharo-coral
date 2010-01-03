*coral
shouldHaltAtStart
	"Coral specific: 
	In coral you can launch the vm that way
	
	 /Applications/Squeak/Squeak\ 4.2.2beta1U.app/Contents/MacOS/Squeak\ VM\ Opt  
		coral.image 
		Hello.st -noquit
	
	-noquit means that the vm should not quit after execution (in such case -headless should not be on)
		 /Applications/Squeak/Squeak\ 4.2.2beta1U.app/Contents/MacOS/Squeak\ VM\ Opt 
				 -headless coral.image Hello.st 
	
	-haltAtStart means that a break point should be on before executing the script (in such case -headless 		should not be on)
	"
	^ (self hasKey: '-HALTATSTART')