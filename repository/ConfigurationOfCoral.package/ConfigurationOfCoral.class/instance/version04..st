versions
version04: spec 
	<version: '0.4' imports: #('0.3-baseline')>

	spec for: #'common' do: [
	spec 
		package: 'Filesystem' with: 'Filesystem-DamienPollet.114';
		project: 'OSProcess' with: '4.4.0';
		package: 'AST-Core' with: 'AST-Core-lr.87';
		package: 'PetitParser' with: 'PetitParser-TudorGirba.209';		
		package: 'PetitTest' with: 'PetitTests-TudorGirba.28';	
		package: 'PetitSmaltalk' with: 'PetitSmalltalk-lr.46'.]
		