reading
readC1
	" C1 Control Escape mode "
	| character |
	character := inStream read.
	character = $[ ifTrue: [ ^ self readCSI ].
	character = $O ifTrue: [ ^ self readSS3 ].
	handler alt: character