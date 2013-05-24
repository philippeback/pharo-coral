baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Move to Squeaksource3 and declare new packages'.
		spec repository: 'http://ss3.gemstone.com/ss/coral'.
		
		self 
			osProcess: spec;
			petitParser: spec.

		spec
			package: 'Coral-Core'					with: [ spec requires: #('PetitParser' 'OSProcess') ];
			package: 'Coral-Utilities'				with: [ spec requires: #('OSProcess') ];
			package: 'Coral-IO'						with: [ spec requires: #('OSProcess') ];
			package: 'Coral-Commandline'			with: [ spec requires: #('PetitParser') ];
			package: 'Coral-Tests' 					with: [ spec requires: #('Coral-Core' 'Coral-Commandline') ];
			package: 'Coral-Examples-Esug2011'	with: [ spec requires: #('Coral-Core' 'Coral-Commandline' 'OSProcess') ].
		
		spec
			group: 'default' with: #('Coral-Core' 'Coral-Utilities' 'Coral-IO' 'Coral-Commandline' 'Coral-Tests' 'Coral-Examples-Esug2011') ]
