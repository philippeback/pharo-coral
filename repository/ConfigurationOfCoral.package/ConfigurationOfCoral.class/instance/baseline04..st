versions
baseline04: spec 
	<version: '0.4-baseline'>
	spec for: #common do: [ 
			spec blessing: #baseline.
			
			spec project: 'Filesystem' with: [
				spec
					className: 'ConfigurationOfFilesystem';
					file: 'ConfigurationOfFilesystem';
					repository: 'http://www.squeaksource.com/fs' ].
			
			spec project: 'OSProcess' with: [
				spec
					className: 'ConfigurationOfOSProcess';
					file: 'ConfigurationOfOSProcess';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		
			spec project: 'PetitParser' with: [
				spec
					repository: 'http://source.lukas-renggli.ch/petit';
					className: 'ConfigurationOfPetitParser';
					loads: #('Core' 'Tests' 'PetitSmalltalk') ].
			
			spec repository: 'http://www.squeaksource.com/Coral'.
			spec package:  'Coral' with: [
				spec requires: #( 'Filesystem' 'OSProcess' 'PetitSmalltalk' )	
			].
		
			spec
				group: 'default' with: #('Coral' );
				group: 'tests' with: #( 'Coral' 'PetitTest' 'OSProcess-Tests' ).
		]