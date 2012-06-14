versions
version442: spec
	<version: '4.4.2' imports: #('4.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'Version 4.4.2'.
		spec author: 'MiguelCoba'.
		spec timestamp: '5/29/2011 12:34'.
		spec 
			package: 'OSProcess' with: 'OSProcess-dtl.61';
			package: 'OSProcess-Tests' with: 'OSProcess-Tests-dtl.4'. ].
