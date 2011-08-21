versions
baseline03: spec 
	<version: '0.3-baseline'>
	spec for: #common do: [ 
			spec blessing: #baseline.
			
			spec package: 'Filesystem' with: [
				spec repository: 'http://www.squeaksource.com/fs'. 	
			].
				
			spec package: 'AST-Core' with: [
				spec repository: 'http://www.squeaksource.com/rb'. 
			].
			
			spec project: 'OSProcess' with: [
				spec
					className: 'ConfigurationOfOSProcess';
					file: 'ConfigurationOfOSProcess';
					version: '4.4.2';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		
	
			spec repository: 'http://source.lukas-renggli.ch/petit'.
			
			spec package: 'PetitParser' with: [
				spec requires: #('AST-Core') 
			].	
			
			spec package: 'PetitSmalltalk' with: [
				spec requires: #('PetitParser' 'PetitTest') 
			].
		
			spec package: 'PetitTest' with: [
				spec requires: #('PetitParser') 
			].
			
			spec repository: 'http://www.squeaksource.com/Coral'.
			spec package:  'Coral' with: [
				spec requires: #( 'Filesystem' 'OSProcess' 'PetitSmalltalk' )	
			].
		
			spec
				group: 'default' with: #('Coral' );
				group: 'tests' with: #( 'Coral' 'PetitTest' 'OSProcess-Tests' ).
		]