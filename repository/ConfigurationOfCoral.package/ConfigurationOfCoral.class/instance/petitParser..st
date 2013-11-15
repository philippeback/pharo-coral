external projects
petitParser: spec
	
	spec project: 'PetitParser' with: [
		spec
			repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/';
			className: 'ConfigurationOfPetitParser';
			versionString: #stable;
			loads: #('Core' 'Tests' 'PetitSmalltalk') ].