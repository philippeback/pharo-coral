versions
version02: spec 
	<version: '0.2'>
	"trying to load latest AST and petitParser/petitSmalltalk"
	spec for: #common do: [ 
			spec repository: 'http://source.wiresong.ca/mc'. 
			spec package: 'Filesystem'.
				
			spec repository: 'http://www.squeaksource.com/rb'. 
			spec package: 'AST-Core' with: 'AST-Core-lr.86'.
			
			spec repository: 'http://www.squeaksource.com/OSProcess'. 
			spec package: 'OSProcess'.
			
			spec repository: 'http://source.lukas-renggli.ch/petit'.
				spec package: 'PetitParser' with: 'PetitParser-lr.205'.		
				spec package: 'PetitTest' with: 'PetitTests-lr.21'.	
				spec package: 'PetitSmaltalk' with: 'PetitSmalltalk-lr.44'.
			
			spec repository: 'http://www.squeaksource.com/Coral'.
			spec package:  'Coral'.
		]