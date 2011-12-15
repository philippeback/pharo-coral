running
tearDown
	self class environment
		at: #CoralTestFixtureClass
		ifPresent: [ :it | it removeFromSystem: false].
	self class environment
		at: #SaBox
		ifPresent: [ :it | it removeFromSystem: false]