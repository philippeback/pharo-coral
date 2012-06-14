baselines
baseline43: spec
	<version: '4.3-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec description: 'Initial baseline for OSProcess'.
		spec repository: 'http://www.squeaksource.com/OSProcess' ].
	
	spec for: #squeakCommon do: [
		spec
			repository: 'http://www.squeaksource.com/OSProcess';
			package: 'OSProcess';
  			package: 'Tests-OSProcess' with: [ spec requires: 'OSProcess' ] ].
	
	spec for: #common do: [
		spec
			group: 'default' with: 'OSProcess';
			group: 'Tests' with: 'Tests-OSProcess' ].