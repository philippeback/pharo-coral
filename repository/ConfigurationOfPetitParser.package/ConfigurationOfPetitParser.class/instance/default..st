baselines
default: spec 
	<version: 'default'>
	
	spec for: #common do: [
		spec blessing: #baseline.
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
					version: 'default';
					repository: 'http://www.squeaksource.com/Glamour' ].
	]