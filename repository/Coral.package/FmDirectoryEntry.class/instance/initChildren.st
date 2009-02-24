private
initChildren
	| dir ents |
	dir := FileDirectory on: self pathName.
	self exists ifFalse: [^children _ #()].
	ents := dir entries collect: [:each | FmFileEntry entry: each].
	ents do: [:each | each parent: self].
	children := ents.
	^children