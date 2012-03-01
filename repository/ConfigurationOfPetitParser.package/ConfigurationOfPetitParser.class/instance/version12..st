versions
version12: spec
	<version: '1.2' imports: #('1.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'New version'.
		spec author: 'AlexandreBergel'.
		spec timestamp: '2/18/2011 13:56'.
		spec project: 'Glamour for Petit' with: '2.1'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.216';
			package: 'PetitTests' with: 'PetitTests-lr.32';
			package: 'PetitAnalyzer' with: 'PetitAnalyzer-lr.37';
			package: 'PetitGui' with: 'PetitGui-TudorGirba.65'.  ].
