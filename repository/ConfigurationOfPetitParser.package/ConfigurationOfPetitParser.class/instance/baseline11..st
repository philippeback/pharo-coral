baselines
baseline11: spec
	<version: '1.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Preparing Moose 4.3.2'.
		spec repository: 'http://source.lukas-renggli.ch/petit'.
		spec project: 'Glamour for Petit' with: [
				spec
					className: 'ConfigurationOfGlamour';
					versionString: '2.1';
					repository: 'http://www.squeaksource.com/Glamour' ].
		spec 
			package: 'PetitParser';
			package: 'PetitTests' with: [
				spec requires: #('PetitParser' ). ];
			package: 'PetitAnalyzer' with: [
				spec requires: #('PetitTests' ). ];
			package: 'PetitGui' with: [
				spec requires: #('Glamour for Petit' ). ].
		spec 
			group: 'Core' with: #('PetitParser' 'PetitAnalyzer' );
			group: 'Tests' with: #('PetitTests' 'PetitAnalyzer' ). ].
