versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'First release'.
		spec author: 'AlexandreBergel'.
		spec timestamp: '12/6/2010 16:11'.
		spec project: 'Glamour for Petit' with: '2.0-beta.8'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.208';
			package: 'PetitTests' with: 'PetitTests-TudorGirba.24';
			package: 'PetitAnalyzer' with: 'PetitAnalyzer-lr.31';
			package: 'PetitGui' with: 'PetitGui-TudorGirba.58'.].
