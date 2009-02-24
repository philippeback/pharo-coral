enumeration
oldestFileMatches: selectionBlock
	| entries |
	entries _ self filesMatches: selectionBlock.
	entries ifEmpty: [^nil].
	^(entries sort: [:a :b | a modificationTime > b modificationTime]) last