baselines
baseline45: spec
	<version: '4.5-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://ss3.gemstone.com/ss/coral'.
		spec 
			package: 'OSProcess'.
		spec 
			group: 'default' with: #('OSProcess' ). ].
