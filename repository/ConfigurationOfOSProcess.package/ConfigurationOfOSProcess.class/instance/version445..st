versions
version445: spec
	<version: '4.4.5' imports: #('4.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec description: 'Version 4.4.5'.
		spec author: 'Marcel Taeumel'.
		spec timestamp: '9/28/2011 14:00'.
		spec 
			package: 'OSProcess' with: 'OSProcess-dtl.65';
			package: 'OSProcess-Tests' with: 'OSProcess-Tests-dtl.7'. ].
