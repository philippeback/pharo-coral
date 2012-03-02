versions
version02: spec
	<version: '0.2' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Progress:
- Include readline
- Depend on Readline packages, do not open workspaces when loading code
- Better option parsing in launcher shell script
- Depend on devel version of readline
- Make coral.sh more portable
- Fix class declaration syntax & tests touching system classes
- Fix getting parameters from CommandLine
- Print errors to stderr
Test cleanup'.
		spec author: 'DamienPollet'.
		spec timestamp: '3/2/2012 19:18'.
		spec 
			project: 'OSProcess' with: '4.4.6';
			project: 'PetitParser' with: '1.4';
			project: 'Readline' with: '0.1'.
		spec 
			package: 'Coral-Core' with: 'Coral-Core-DamienPollet.13';
			package: 'Coral-Utilities' with: 'Coral-Utilities-LucFabresse.7';
			package: 'Coral-Commandline' with: 'Coral-Commandline-DamienPollet.7';
			package: 'Coral-Tests' with: 'Coral-Tests-DamienPollet.6';
			package: 'Coral-Examples-Esug2011' with: 'Coral-Examples-Esug2011-DamienPollet.13'. ].
