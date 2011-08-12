versions
baseline04: spec 
	<version: '0.4-baseline'>
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Coral'.
		
		spec project: 'Filesystem' with: [
			spec repository: 'http://www.squeaksource.com/fs';
				className: 'ConfigurationOfFilesystem' ].
		
		spec project: 'OSProcess' with: [
			spec repository: 'http://www.squeaksource.com/MetacelloRepository';
				className: 'ConfigurationOfOSProcess' ].
	
		spec project: 'PetitParser' with: [
			spec repository: 'http://source.lukas-renggli.ch/petit';
				className: 'ConfigurationOfPetitParser';
				versionString: #bleedingEdge
				loads: #('Core' 'PetitTests' 'PetitSmalltalk') ].
		
		spec
			package:  'Coral' with: [
				spec requires: #( 'Filesystem' 'OSProcess' 'PetitParser' ) ].
		
		spec
			group: 'default' with: #( 'Coral' );
			group: 'tests' with: #( 'Coral' 'OSProcess-Tests' ).
	]