external projects
petitParser: spec
	
	spec project: 'PetitParser' with: [
		spec
			repository: self metacelloRepositoryURL;
			className: 'ConfigurationOfPetitParser';
			versionString: #development;
			loads: #('Core' 'Tests' 'PetitSmalltalk') ].