output
locate: position
	"Sets the cursor position where subsequent text will begin"
	
	self esc: '[' , (position y) asString , ';' , (position x) asString , 'f'.
	