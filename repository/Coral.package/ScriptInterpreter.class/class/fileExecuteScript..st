file list services
fileExecuteScript: fullName

	| fileName fileNameStream class |
	fullName ifNil: [^ Beeper beep].
	fileNameStream := WriteStream on: String new.
	(FmFileEntry pathName: fullName) name 
			detect:[:each | 
				each = $. ifFalse: [fileNameStream nextPut: each].
				each = $.].
	fileName := fileNameStream contents capitalized.
	class := self creatScriptClass: fileName.
	Cursor read showWhile: [
		self parseAndInterpret: (FileStream readOnlyFileNamed: fullName) in: class]