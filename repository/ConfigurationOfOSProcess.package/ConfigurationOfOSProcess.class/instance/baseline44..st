baselines
baseline44: spec
	<version: '4.4-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.squeaksource.com/OSProcess'.
		spec 
			package: 'OSProcess';
			package: 'OSProcess-Tests' with: [
				spec requires: #('OSProcess' ). ].
		spec 
			group: 'default' with: #('OSProcess' );
			group: 'Tests' with: #('OSProcess-Tests' ). ].
