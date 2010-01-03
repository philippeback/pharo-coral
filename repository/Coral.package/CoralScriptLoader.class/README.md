CoralScriptLoader is responsible to load and debug scripts.
For now you can either launch the vm in 
	- headless mode and you should not use the other coral options. 
	
	#! /bin/sh
	vm='/Applications/Squeak/Squeak 4.2.2beta1U.app/Contents/MacOS/Squeak VM Opt'
	"$vm" -headless "coral.image" "`pwd`/$1"
	
	You can use ./coral.sh yourscript.psc  (pharoScript) or .cor for coral.
	
	- debug mode
	
	#! /bin/sh
	vm='/Applications/Squeak/Squeak 4.2.2beta1U.app/Contents/MacOS/Squeak VM Opt'
	"$vm" "coral.image" "`pwd`/$1" -noquit
	
	In debugmode you can specify that the vm does not quit after execution using -noquit and that the execution
	of the script is halted before its execution using -haltAtStart
	 
	-haltAtStart means that a break point should be on before executing the script (in such case -headless should not be on)