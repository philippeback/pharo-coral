baselines
baseline04: spec
	<version: '0.4-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Add readline dependency'.
		spec repository: 'http://ss3.gemstone.com/ss/coral'.
		
		spec
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
					repository: 'http://source.lukas-renggli.ch/petit' ];
			project: 'Readline' with: [
				spec
					className: 'ConfigurationOfReadline';
					versionString: #development;
					repository: 'http://ss3.gemstone.com/ss/readline' ].

		spec
			package: 'Coral-Core'					with: [ spec requires: #('PetitParser' 'OSProcess') ];
			package: 'Coral-Utilities'				with: [ spec requires: #('OSProcess') ];
			package: 'Coral-Commandline'			with: [ spec requires: #('PetitParser' 'Readline') ];
			package: 'Coral-Tests' 					with: [ spec requires: #('Coral-Core' 'Coral-Commandline') ];
			package: 'Coral-Examples-Esug2011'	with: [ spec requires: #('Coral-Core' 'Coral-Commandline' 'OSProcess') ].
		
		spec
			group: 'default' with: #('Coral-Core' 'Coral-Utilities' 'Coral-Commandline' 'Coral-Tests' 'Coral-Examples-Esug2011') ]
