private
ensureParent
	self pathComponents size <= 1
		ifTrue: [^ nil].
	parent := FmDirectoryEntry
				pathComponents: (self pathComponents copyFrom: 1 to: self pathComponents size - 1)
				drive: self drive.
	^ parent