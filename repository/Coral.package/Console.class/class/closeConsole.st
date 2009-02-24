console
closeConsole

	(OSProcess thisOSProcess isKindOf: WindowsProcess) 
		ifTrue: [OSProcess thisOSProcess closeConsole]