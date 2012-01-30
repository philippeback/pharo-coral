output
eraseScreen
	"Erases the screen with the background colour and moves the cursor to home."

	self esc: '[2J'.
	