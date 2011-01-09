private
listHistory
	"display the content of the console history"

	history doWithIndex: [ :each :i | Console printNl: (i asString , ' -> ' , each) ].