output
displayAttributes: attributes
	"Sets multiple display attribute settings
	
	0	Reset all attributes
	1	Bright
	2	Dim
	4	Underscore	
	5	Blink
	7	Reverse
	8	Hidden

	Foreground Colours
	30	Black
	31	Red
	32	Green
	33	Yellow
	34	Blue
	35	Magenta
	36	Cyan
	37	White

	Background Colours
	40	Black
	41	Red
	42	Green
	43	Yellow
	44	Blue
	45	Magenta
	46	Cyan
	47	White

<ESC>[{attr1};...;{attrn}m
	
	Console displayAttribute: #(1 33 40)"


	| stream cmd |
	
	cmd := WriteStream on: String new.
	stream := attributes readStream.
	
	stream do: [ 
		:att | 
		cmd nextPutAll: att asString.
		(stream atEnd not) ifTrue: [ cmd nextPutAll: ';' ]
	].

	Console esc: '[' , (cmd contents) , 'm'.