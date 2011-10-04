baselines
baseline02: spec
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Move to Squeaksource3 and declare new packages'.
		spec repository: 'http://ss3.gemstone.com/ss/coral'.
		
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
					versionString: #development;
					loads: #('Core' 'Tests' 'PetitSmalltalk');
					repository: 'http://source.lukas-renggli.ch/petit' ].

		spec
			package: 'Coral-Core'					with: [ spec requires: #('PetitParser' 'OSProcess') ];
			package: 'Coral-Utilities'				with: [ spec requires: #('Filesystem' 'OSProcess') ];
			package: 'Coral-IO'						with: [ spec requires: #('OSProcess') ];
			package: 'Coral-Commandline'			with: [ spec requires: #('PetitParser') ];
			package: 'Coral-Tests' 					with: [ spec requires: #('Coral-Core' 'Coral-Commandline') ];
			package: 'Coral-Examples-Esug2011'	with: [ spec requires: #('Coral-Core' 'Coral-Commandline' 'OSProcess') ].
		
		spec
			group: 'default' with: #('Coral-Core' 'Coral-Utilities' 'Coral-IO' 'Coral-Commandline' 'Coral-Tests' 'Coral-Examples-Esug2011') ]
