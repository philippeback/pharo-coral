console
openConsole

	(OSProcess thisOSProcess isKindOf: WindowsProcess) 
		ifTrue: [OSProcess thisOSProcess openConsole]