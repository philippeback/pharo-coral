instance creation
new
	^ self
		width: (OSProcess thisOSProcess environment at: #COLUMNS ifAbsent: [0]) asNumber
		height: (OSProcess thisOSProcess environment at: #LINES ifAbsent: [0]) asNumber