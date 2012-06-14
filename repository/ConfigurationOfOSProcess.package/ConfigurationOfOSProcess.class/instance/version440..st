versions
version440: spec
	<version: '4.4.0' imports: #('4.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'Version 4.4.0'.
		spec author: 'MiguelCoba'.
		spec timestamp: '2/19/2011 01:59'.
		spec 
			package: 'OSProcess' with: 'OSProcess-dtl.59';
			package: 'OSProcess-Tests' with: 'OSProcess-Tests-dtl.4'. ].
