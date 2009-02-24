actions-path
concatPathComponents: components 
	^ FmFileEntry pathComponents: (self pathComponents copy addAll: components;
			 yourself) drive: self drive