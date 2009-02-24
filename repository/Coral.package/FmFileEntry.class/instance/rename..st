actions-file
rename: newName
	self parent asFileDirectory rename: self name toBe: newName.
	self name: newName