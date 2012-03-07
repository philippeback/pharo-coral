running
cleanupPackagesNamed: packageNames
	packageNames do: [:each | Smalltalk organization removeSystemCategory: each]