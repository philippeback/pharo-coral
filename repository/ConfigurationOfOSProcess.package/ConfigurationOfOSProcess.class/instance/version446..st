versions
version446: spec
	<version: '4.4.6' imports: #('4.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Refactoring for Coral :
- Move PipeableOSProcess & InternalPipe from CommandShell
- Silence AIO plugin popup during tests
- Merge dtl.66
Copied PipeableOSProcess over from CommandShell'.
		spec author: 'DamienPollet'.
		spec timestamp: '6/14/2012 18:25'.
		spec package: 'OSProcess' with: 'OSProcess-DamienPollet.73'. ].
