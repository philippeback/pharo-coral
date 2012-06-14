baselines
baseline4312: spec
	<version: '4.3.12-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec description: 'Initial baseline for OSProcess'.
		spec repository: 'http://www.squeaksource.com/OSProcess' ].
	
	spec for: #squeakCommon do: [
		spec
			repository: 'http://www.squeaksource.com/OSProcess';
			package: 'OSProcess-Base';
   			package: 'OSProcess-AIO' with: [ spec requires: 'OSProcess-Base' ];
  			package: 'OSProcess-Mac' with: [ spec requires: 'OSProcess-Base' ];
  			package: 'OSProcess-OS2' with: [ spec requires: 'OSProcess-Base' ];
  			package: 'OSProcess-RiscOS' with: [ spec requires: 'OSProcess-Base' ];
  			package: 'OSProcess-Unix' with: [ spec requires: 'OSProcess-Base' ];
  			package: 'OSProcess-Win32' with: [ spec requires: 'OSProcess-Base' ];
  			package: 'OSProcess-Tests' with: [ spec requires: 'OSProcess-Base' ] ].
	
	spec for: #common do: [
		spec
			group: 'default' with: #('OSProcess' 'OSProcess-AIO' 'Tests');
			group: 'OSProcess' with: #('OSProcess-Base' 'Platforms');
			group: 'Platforms' with: 'OSProcess-Mac';
			group: 'Platforms' with: 'OSProcess-OS2';
			group: 'Platforms' with: 'OSProcess-RiscOS';
			group: 'Platforms' with: 'OSProcess-Unix';
			group: 'Platforms' with: 'OSProcess-Win32';
			group: 'Tests' with: 'OSProcess-Tests' ].