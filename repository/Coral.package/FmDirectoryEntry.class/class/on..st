instance creation
on: aFileDirectry 
	"FmDirectory on: FileDirectory default"
	| inst |
	inst := self new.
	inst pathName: aFileDirectry pathName.
	^ inst