versions
version4312: spec
	<version: '4.3.12' imports: #('4.3.12-baseline')>
	
	spec for: #common do: [
		spec blessing: #development.
		spec description: 'Release 4.3.12'.
		spec author: 'dtl'.
		spec timestamp: '06/30/2010 19:55' ].
	
	spec for: #squeakCommon do: [
		spec
		  	package: 'OSProcess-Base' with: 'OSProcess-Base-dtl.4';
		  	package: 'OSProcess-AIO' with: 'OSProcess-AIO-dtl.1';
		  	package: 'OSProcess-Mac' with: 'OSProcess-Mac-dtl.1';
		  	package: 'OSProcess-OS2' with: 'OSProcess-OS2-dtl.1';
		  	package: 'OSProcess-RiscOS' with: 'OSProcess-RiscOS-dtl.1';
		  	package: 'OSProcess-Unix' with: 'OSProcess-Unix-dtl.3';
		  	package: 'OSProcess-Win32' with: 'OSProcess-Win32-dtl.2';
			package: 'OSProcess-Tests' with: 'OSProcess-Tests-dtl.1' ].