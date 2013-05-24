baselines
baselineDev: spec
	<version: 'dev-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Move deps to SmalltalkHub'.
		spec repository: 'http://smalltalkhub.com/mc/dh83/coral/main'.
		
		self 
			osProcess: spec;
			petitParser: spec;
			readlline: spec.

		spec
			package: 'Coral-Core'					with: [ spec requires: #('PetitParser' 'OSProcess') ];
			package: 'Coral-Utilities'				with: [ spec requires: #('OSProcess') ];
			package: 'Coral-Commandline'			with: [ spec requires: #('PetitParser' 'Readline') ];
			package: 'Coral-Tests' 					with: [ spec requires: #('Coral-Core' 'Coral-Commandline') ];
			package: 'Coral-Examples-Esug2011'	with: [ spec requires: #('Coral-Core' 'Coral-Commandline' 'OSProcess') ].
		
		spec
			group: 'default' with: #('Coral-Core' 'Coral-Utilities' 'Coral-Commandline' 'Coral-Tests' 'Coral-Examples-Esug2011') ]
