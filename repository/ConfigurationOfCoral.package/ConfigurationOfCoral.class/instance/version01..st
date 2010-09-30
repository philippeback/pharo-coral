versions
version01: spec 
	<version: '0.1'>
	spec for: #common do: [ 
			spec repository: 'http://source.wiresong.ca/mc'. 
			spec package: 'Filesystem'.
				
			spec repository: 'http://www.squeaksource.com/rb'. 
			spec package: 'AST-Core' with: 'AST-Core-lr.79'.
			
			spec repository: 'http://www.squeaksource.com/OSProcess'. 
			spec package: 'OSProcess'.
			
			spec repository: 'http://source.lukas-renggli.ch/petit'.
				spec package: 'PetitParser' with: 'PetitParser-lr.122'.	
				spec package: 'PetitSmaltalk' with: 'PetitSmalltalk-lr.13'.
			
			spec repository: 'http://www.squeaksource.com/Coral'.
			spec package:  'Coral'.
		]