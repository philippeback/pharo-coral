Coral makes it possible to write shell scripts with Pharo.

Recommended loading:
	ConfigurationOfCoral load.             "as a user"
	ConfigurationOfCoral loadBleedingEdge. "as a contributor"
	

Development workflow	scripts

	MetacelloToolBox
		createDevelopment: '0.1'
		for: 'ConfigurationOfCoral'
		importFromBaseline: '0.1-baseline'
		description: 'Initial development version'.

	MetacelloToolBox validateConfiguration: ConfigurationOfCoral.

	Gofer new squeaksource: 'Coral';
		package: 'ConfigurationOfCoral';
		package: 'Coral-Core';
		package: 'Coral-Commandline';
		package: 'Coral-Tests';
		package: 'Coral-Utilities';
		commit: 'Reorganize packages, rewrite ConfigurationOfCoral from scratch.'
