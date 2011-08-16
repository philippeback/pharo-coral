initialization
initialize
	margin := 0.
	width := OSProcess thisOSProcess environment at: #COLUMNS.
	height := OSProcess thisOSProcess environment at: #LINES