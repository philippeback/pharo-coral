script examples
scriptHappyFace

  ^'[
	Console resetAllAttributes.
	Console displayAttributes: #(31 7 42).
	Console eraseScreen.

	Console locate: 10@5; print: ''  ''.
	Console locate: 10@6; print: '' O''.
	Console locate: 30@5; print: ''  ''.
	Console locate: 30@6; print: '' O''.

	Console plot: 20@10.
	Console plot: 20@11.

	Console plot: 14@16.
	Console plot: 25@16.

	Console locate: 15@17; print: ''          ''.
	
	Console locate: 1@20.
	Console resetAllAttributes.
]'
