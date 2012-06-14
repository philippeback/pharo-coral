versions
version4311: spec
	<version: '4.3.11' imports: #('4.3-baseline')>
	
	spec for: #common do: [
		spec blessing: #development.
		spec description: 'Release 4.3.11'.
		spec author: 'MiguelCoba'.
		spec timestamp: '01/14/2010 00:30' ].
	
	spec for: #squeakCommon do: [
		spec
		  	package: 'OSProcess' with: 'OSProcess-dtl.53';
			package: 'Tests-OSProcess' with: 'Tests-OSProcess-dtl.20' ].