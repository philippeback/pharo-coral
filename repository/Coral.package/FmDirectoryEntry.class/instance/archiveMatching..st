archive operations
archiveMatching: aBlock
	"Get a zip archive object filtered with matching block"
	^ZipArchive new addTree: self asFileDirectory assureExistence match: aBlock