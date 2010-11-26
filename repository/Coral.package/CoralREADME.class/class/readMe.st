comment
readMe

	^ '"INSTRUCTIONS

TO REVISED.... 

[We assume you are on a Mac -- you will need to adapt these instructions for other platforms ...]"

"1) Save this image as coral.image"

SmalltalkImage current saveAs: ''coral.image''.

"2) Generate coral.sh "

CoralInstaller generateCoralScript.
CoralInstaller generateCoralDebugScript.

"3)  make them executable: chmod +x coral.sh coralDebug.sh"

"4) Generate examples implemented in CoralScriptExamples"

CoralInstaller generateAllExamples.

"5) Execute an example"

"./coral.sh hello.cst"

'