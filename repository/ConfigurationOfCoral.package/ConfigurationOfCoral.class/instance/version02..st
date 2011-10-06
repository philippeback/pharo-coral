versions
version02: spec
	<version: '0.2' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Include readline
Depend on Readline packages, do not open workspaces when loading code'.
		spec author: 'DamienPollet'.
		spec timestamp: '10/6/2011 17:11'.
		spec 
			project: 'OSProcess' with: '4.4.5';
			project: 'PetitParser' with: '1.4'.
		spec 
			package: 'Coral-Core' with: 'Coral-Core-CamilloBruni.8';
			package: 'Coral-Utilities' with: 'Coral-Utilities-DamienPollet.4';
			package: 'Coral-Commandline' with: 'Coral-Commandline-DamienPollet.6';
			package: 'Coral-Tests' with: 'Coral-Tests-DamienPollet.2';
			package: 'Coral-Examples-Esug2011' with: 'Coral-Examples-Esug2011-DamienPollet.13'. ].
