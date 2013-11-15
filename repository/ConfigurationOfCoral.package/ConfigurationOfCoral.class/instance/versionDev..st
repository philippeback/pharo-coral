versions
versionDev: spec
	<version: 'dev' imports: #('dev-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: ''.
		spec author: 'DamienPollet'.
		spec timestamp: '4/12/2013 17:37'.
		spec 
			project: 'OSProcess' with: '4.4.6';
			project: 'PetitParser' with: '1.5';
			project: 'Readline' with: '0.1'.
		spec 
			package: 'Coral-Core' with: 'Coral-Core-DamienPollet.19';
			package: 'Coral-Utilities' with: 'Coral-Utilities-DamienPollet.8';
			package: 'Coral-Commandline' with: 'Coral-Commandline-DamienPollet.7';
			package: 'Coral-Tests' with: 'Coral-Tests-DamienPollet.9';
			package: 'Coral-Examples-Esug2011' with: 'Coral-Examples-Esug2011-DamienPollet.13'. ].
