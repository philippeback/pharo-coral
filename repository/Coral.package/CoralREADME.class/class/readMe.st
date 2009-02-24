comment
readMe
	^ '"INSTRUCTIONS

- Save this image as ''coral.image''

- Install the following Squeak VM:

http://homepage.mac.com/johnmci/.Public/Squeak%203.8.21beta1U.app.zip

- Save the following script into the file ''hello.st''

[
	Console print: ''Coral is working'', String lf.
	Console print: ''Yahoo!''
]

Save the following shell script as ''coral.sh'' and make it executable:

#! /bin/sh
vm=''/Applications/Squeak/Squeak 3.8.21beta1U.app/Contents/MacOS/Squeak VM Opt''
"$vm" -headless coral.image $1

Now you should be able to run the coral script from the command line as follows:

./coral.sh hello.st"
'