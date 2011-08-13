baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.squeaksource.com/Coral'.
		
		spec
			project: 'Filesystem' with: [
				spec
					className: 'ConfigurationOfFilesystem';
					versionString: #bleedingEdge;
					repository: 'http://www.squeaksource.com/fs' ];
			project: 'OSProcess' with: [
				spec
					className: 'ConfigurationOfOSProcess';
					versionString: #stable;
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'PetitParser' with: [
				spec
					className: 'ConfigurationOfPetitParser';
					versionString: #bleedingEdge;
					loads: #('Core' 'Tests' 'PetitSmalltalk');
					repository: 'http://source.lukas-renggli.ch/petit' ].

		spec
			package: 'Coral-Core' with: [
				spec requires: #('PetitParser' 'OSProcess' ). ];
			package: 'Coral-Utilities' with: [
				spec requires: #('Filesystem' 'OSProcess' ). ];
			package: 'Coral-Commandline' with: [
				spec requires: #('PetitParser' ). ];
			package: 'Coral-Tests' with: [
				spec requires: #('Coral-Core' 'Coral-Commandline' ). ].
		spec
			group: 'default' with: #('Coral-Core' 'Coral-Utilities' 'Coral-Commandline' );
			group: 'tests' with: #('Coral-Tests' 'OSProcess-Tests'). ].
