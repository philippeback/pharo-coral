fileExample
creatingAFile

	"str := FSUnixFilesystem new writeStreamOn: 'giffle'.
str nextPutAll: 'zzzzzzzzzz'.
str close"

"(FSDiskFilesystem current childrenAt: FSDiskFilesystem current
workingDirectory) do:
   [:each | each printOn: Transcript cr ].
Transcript flush.

Speaking of current dir...
FSDiskFilesystem current workingDirectory isWorkingDirectory"

"FSDiskFilesystem current workingDirectory"