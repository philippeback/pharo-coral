comment
readMe
	^ '"INSTRUCTIONS

TO REVISED.... 

[We assume you are on a Mac -- you will need to adapt these instructions for other platforms ...]

- Save this image as ''coral.image''

- Install the following Squeak VM in /Applications/Squeak:

http://homepage.mac.com/johnmci/.Public/Squeak%204.2.1beta1U.app.zip

- Install Rio (File-Base) for simpler file management

Installer ss project: ''Rio'' ; install: ''File-Kernel'' ;install: ''File-Base''.

- Save the following shell script as ''coral.sh'' and make it executable:

''coral.sh'' asFile contents: ''#! /bin/sh
vm=''''/Applications/Squeak/Squeak 4.2.1beta1U.app/Contents/MacOS/Squeak VM Opt''''
"$vm" -headless coral.image $1''

- Save the following script into the file ''hello.st''

''hello.st'' asFile contents: ''[
	Console print: ''''Coral is working'''', String lf.
	Console print: ''''Yahoo!''''
]''

Now you should be able to run the coral script from the command line as follows:

./coral.sh hello.st

----

Another script example:

''rio-test.st'' asFile contents: ''[
	Object subclass: #SaBox
		instanceVariableNames: ''''bob''''
		classVariableNames: ''''''''
		poolDictionaries: ''''''''
		category: ''''SandBox''''
]

SaBox>>convertToFiles: aClass inDirectory: rootDir
[
	"a dummy example that convert a class in a file hierarchy"
	| classDir categoryNames |
	classDir := (rootDir / aClass asString) mkdir.
	categoryNames := aClass organization categories collect: [ :aCategory | aCategory asString ].
	categoryNames do: [ :aCategoryName | | protocolDir | 
		protocolDir := (classDir / aCategoryName) mkdir. 
		(aClass methodsInCategory: aCategoryName) do: [ :aSelector |
			(protocolDir / (aSelector asFileName replaceAll: $: with: $_)) asFile contents: (aClass sourceCodeAt: aSelector) 
		]
	].
	^classDir
]


[
	SaBox new convertToFiles: Object inDirectory: Directory home.
	Console print: ''''The directory '''', Directory home path, ''''/Object has been created''''
]''




"
'