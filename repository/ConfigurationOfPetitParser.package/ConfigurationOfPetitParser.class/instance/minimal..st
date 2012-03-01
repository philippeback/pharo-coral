baselines
minimal: spec 
	<version: 'minimal'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://source.lukas-renggli.ch/petit'.
		spec 
			package: 'PetitParser';
			package: 'PetitTests' with: [ spec requires: 'PetitParser'];
			package: 'PetitAnalyzer' with: [ spec requires: 'PetitTests'].
		spec group: 'Core' with: #( 'PetitParser' 'PetitAnalyzer' ).
		spec group: 'Tests' with: #( 'PetitTests' 'PetitAnalyzer' )
	]