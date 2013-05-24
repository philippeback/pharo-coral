external projects
osProcess: spec
	spec project: 'OSProcess' with: [
		spec
			repository: self metacelloRepositoryURL;
			className: 'ConfigurationOfOSProcess';
			version: #stable ].