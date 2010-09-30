broken script examples
rioTest

  ^'[
	Object subclass: #SaBox
		instanceVariableNames: ''bob''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: ''SandBox''
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
	Console print: ''The directory , Directory home path, ''/Object has been created''
]
'