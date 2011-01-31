versions
version03: spec 
	<version: '0.3' imports: #('0.1-baseline')>

	spec for: #common do: [ 
			spec package: 'AST-Core' with: 'AST-Core-lr.87';
				package: 'PetitParser' with: 'PetitParser-lr.205';		
				package: 'PetitTest' with: 'PetitTests-lr.21';	
				package: 'PetitSmaltalk' with: 'PetitSmalltalk-lr.44'.
		]