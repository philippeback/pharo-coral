baselines
baseline12: spec
	<version: '1.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Describing satellite packages'.
		spec repository: 'http://source.lukas-renggli.ch/petit'.
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
				spec requires: #('Glamour for Petit' ). ];
			package: 'PetitSmalltalk' with: [
				spec requires: #( 'AST-Core' 'PetitParser' 'PetitTests') ].
			"todo: declare all other packages & dependencies here"
.
		spec 
			group: 'Core' with: #('PetitParser' 'PetitAnalyzer' );
			group: 'Tests' with: #('PetitTests' 'PetitAnalyzer' ). ].
