versions
version13: spec
	<version: '1.3' imports: #('1.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: ''.
		spec author: 'AlexandreBergel'.
		spec timestamp: '5/16/2011 16:23'.
		spec project: 'Glamour for Petit' with: '2.1'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.216';
			package: 'PetitTests' with: 'PetitTests-lr.32';
			package: 'PetitAnalyzer' with: 'PetitAnalyzer-lr.37';
			package: 'PetitGui' with: 'PetitGui-TudorGirba.65'. ].
