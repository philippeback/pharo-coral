versions
version04: spec 
	<version: '0.4' imports: #('0.4-baseline')>

	spec for: #'common' do: [
		spec blessing: #development.
		spec
			project: 'Filesystem' with: '2.0.1';
			project: 'OSProcess' with: '4.4.2';
			project: 'PetitParser' with: '1.4'. ]