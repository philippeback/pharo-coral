archive operations
archive
	"Get a zip archive object from thic file entry (need to be an existing compressed file)"
	^ZipArchive new readFrom: self pathName