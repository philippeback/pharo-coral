loading
load
	"self load"

	| r |
	r := self project latestVersion load.
	(Smalltalk at: #ThisOSProcess) ifNotNilDo: [ :osp | osp startUp: true ] "initialize"