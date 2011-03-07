versions
version03: spec 
	<version: '0.3' imports: #('0.2-baseline')>

	spec for: #'common' do: [
	spec 
		package: 'Filesystem' with: 'Filesystem-DamienPollet.114';
		package: 'OSProcess' with: 'OSProcess-dtl.59';
		package: 'AST-Core' with: 'AST-Core-lr.87';
		package: 'PetitParser' with: ' PetitParser-TudorGirba.209';		
		package: 'PetitTest' with: 'PetitTests-TudorGirba.28';	
		package: 'OSProcess' with: 'OSProcess-Tests-dtl.4';
		package: 'PetitSmaltalk' with: 'PetitSmalltalk-lr.46'.]
		