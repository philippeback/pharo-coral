generated-comments
parserDefinitionComment

	"%id <name> <number> <negativeNumber> <binarySymbol> <period> <colon> <rightParentheses> <rightCurlyBrackets> <rightBoxBrackets> <string> <keyword> <multikeyword> <assignment> <character>;
%start MethodPattern;

Method:
	MethodPattern Body 						{#method:};

MethodPattern:
	<name>										{#unaryMessage:}
|	<binarySymbol> Variable						{#messagePart:}
|	<binarySymbol> error						{#argumentNameMissing:}
|	KeywordMethodPattern						{#first:};

KeywordMethodPattern:
	<keyword> Variable							{#messagePart:}
|	<keyword> error								{#argumentNameMissing:}
|	KeywordMethodPattern <keyword> Variable	{#addMessagePart:}
|	KeywordMethodPattern <keyword> error		{#argumentNameMissing:};
		
Variable: 
	<name>										{#variable:};
												
Body:
|	Body <decimalNumber>
|	Body <radixNumber>
|	Body <scaledNumber>
|	Body <exponentNumber>
|	Body <number>
|	Body <negativeNumber>
|	Body <string>
|	Body <name>
|	Body <keyword>
|	Body <multikeyword>
|	Body <binarySymbol>
|	Body <assignment>
|	Body <alternateKeyword>
|	Body <whitespace>
|	Body <comment>
|	Body <character>
|	Body <period>
|	Body <variableAssignment>
|	Body <rightBoxBrackets>
|	Body <rightCurlyBrackets>
|	Body <rightParentheses>
|	Body <colon>
|	Body <semicolon>
|	Body <anyChar>
|	Body ""[""
|	Body ""{""
|	Body ""(""
|	Body ""|"";"