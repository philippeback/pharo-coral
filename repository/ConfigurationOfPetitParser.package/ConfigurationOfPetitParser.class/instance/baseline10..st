baselines
baseline10: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec author: 'Alexandre Bergel'.
		spec description: 'work on Pharo 1.1.1'.
		spec repository: 'http://source.lukas-renggli.ch/petit'.
		spec 
			package: 'PetitParser';
			package: 'PetitTests' with: [ spec requires: 'PetitParser'];
			package: 'PetitAnalyzer' with: [ spec requires: 'PetitTests'];
			package: 'PetitGui' with: [ spec requires: 'Glamour for Petit'].
		spec group: 'Core' with: #( 'PetitParser' 'PetitAnalyzer' ).
		spec group: 'Tests' with: #( 'PetitTests' 'PetitAnalyzer' ).
		spec project: 'Glamour for Petit' with: [
				spec
					className: 'ConfigurationOfGlamour';
					file: 'ConfigurationOfGlamour';
					version: '2.0-beta.8';
					repository: 'http://www.squeaksource.com/Glamour' ].
	]