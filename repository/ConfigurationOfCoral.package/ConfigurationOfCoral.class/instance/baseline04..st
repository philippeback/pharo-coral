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
				
			spec package: 'AST-Core' with: [
				spec repository: 'http://www.squeaksource.com/rb' ].
			
			spec project: 'OSProcess' with: [
				spec
					className: 'ConfigurationOfOSProcess';
					file: 'ConfigurationOfOSProcess';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		
			spec project: 'PetitParser' with: [
				spec
					className: 'ConfigurationOfPetitParser';
					file: 'ConfigurationOfPetitParser';
					version: 'default';
					repository: 'http://source.lukas-renggli.ch/petit' ].
			spec package: 'PetitSmalltalk' with: [ spec requires: #PetitParser ].
			
			spec repository: 'http://www.squeaksource.com/Coral'.
			spec package:  'Coral' with: [
				spec requires: #( 'Filesystem' 'OSProcess' 'PetitSmalltalk' )	
			].
		
			spec
				group: 'default' with: #('Coral' );
				group: 'tests' with: #( 'Coral' 'PetitTest' 'OSProcess-Tests' ).
		]