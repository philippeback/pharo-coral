running
setUp
	super setUp.
	
	"prepare an already existing class for some tests"
	createdClasses add: (Object subclass: #CoralTestFixtureClass)