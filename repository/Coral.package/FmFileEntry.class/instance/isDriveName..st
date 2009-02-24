private
isDriveName: firstToken 
	self onWindows
		ifTrue: [^ firstToken size = 2
				and: [(firstToken endsWith: ':')
						and: [firstToken first asCharacter isDriveLetter]]].

	self onMac ifTrue: [^FileDirectory root directoryNames includes: firstToken].

	^false