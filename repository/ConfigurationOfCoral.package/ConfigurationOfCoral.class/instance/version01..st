versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Initial development snapshot'.
		spec author: 'DamienPollet'.
		spec timestamp: '10/5/2011 19:03'.
		spec 
			project: 'OSProcess' with: '4.4.5';
			project: 'PetitParser' with: #stable.
		spec 
			package: 'Coral-Core' with: 'Coral-Core-CamilloBruni.8';
			package: 'Coral-Utilities' with: 'Coral-Utilities-DamienPollet.3';
			package: 'Coral-IO' with: 'Coral-IO-CamilloBruni.6';
			package: 'Coral-Commandline' with: 'Coral-Commandline-DamienPollet.6';
			package: 'Coral-Tests' with: 'Coral-Tests-DamienPollet.2';
			package: 'Coral-Examples-Esug2011' with: 'Coral-Examples-Esug2011-DamienPollet.13'. ].
