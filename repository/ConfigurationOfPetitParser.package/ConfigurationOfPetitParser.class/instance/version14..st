versions
version14: spec
	<version: '1.4' imports: #('1.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: ''.
		spec author: 'DamienPollet'.
		spec timestamp: '3/1/2012 16:04'.
		spec project: 'Glamour for Petit' with: '2.1'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.228';
			package: 'PetitTests' with: 'PetitTests-lr.43';
			package: 'PetitAnalyzer' with: 'PetitAnalyzer-lr.39';
			package: 'PetitGui' with: 'PetitGui-TudorGirba.65';
			package: 'PetitSmalltalk' with: 'PetitSmalltalk-lr.57'. ].
