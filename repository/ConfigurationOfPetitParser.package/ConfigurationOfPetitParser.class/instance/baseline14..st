baselines
baseline14: spec
	<version: '1.4-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'AST-Core needed again'.
		spec
			repository: 'http://ss3.gemstone.com/ss/coral';
			repository: 'http://source.lukas-renggli.ch/petit'.
		spec project: 'Glamour for Petit' with: [
			spec
				className: 'ConfigurationOfGlamour';
				versionString: '2.1';
				repository: 'http://www.squeaksource.com/Glamour' ].
		spec project: 'AST-Core' with: [
			spec
				repository: 'http://www.squeaksource.com/MetacelloRepository';
				className: 'ConfigurationOfRefactoringBrowser';
				loads: #('AST-Core') ].
		
		spec 
			package: 'PetitParser';
			package: 'PetitTests' with: [
				spec requires: #('PetitParser' ). ];
			package: 'PetitAnalyzer' with: [
				spec requires: #('PetitTests' ). ];
			package: 'PetitGui' with: [
				spec requires: #('PetitParser' 'Glamour for Petit' ). ].
		
		spec
			package: 'PrettyPetit'.
		
		spec
			package: 'PetitSmalltalk' with: [
				spec requires: #( 'AST-Core' 'PetitParser' 'PetitTests') ];
			package: 'PetitCSV' with: [
				spec requires: #('PetitParser' 'PetitTests') ];
			package: 'PetitJson' with: [
				spec requires: #('PetitParser' 'PetitTests') ];
			package: 'PetitMSE' with: [
				spec requires: #('PetitParser' 'PetitTests') ];
			package: 'PetitManifestMf' with: [
				spec requires: #('PetitParser' 'PetitTests') ];
			package: 'PetitRegex' with: [
				spec requires: #('PetitParser') ];
			package: 'PetitSQL' with: [
				spec requires: #('PetitParser' 'PetitTests') ];
			package: 'PetitXPath' with: [
				spec requires: #('PetitParser' 'PetitXml') ];
			package: 'PetitXml' with: [
				spec requires: #('PetitParser' 'PetitTests') ];
			package: 'Factorial-Language' with: [
				spec requires: #('PetitParser') ].
.
		spec 
			group: 'Core' with: #('PetitParser' 'PetitAnalyzer' );
			group: 'Tests' with: #('PetitTests' 'PetitAnalyzer' ). ].
