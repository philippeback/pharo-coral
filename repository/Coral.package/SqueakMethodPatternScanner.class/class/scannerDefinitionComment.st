generated-comments
scannerDefinitionComment

	"<decimalNumber>:	[0-9]+ (\. [0-9]+)? ;
<radixNumber>:		[0-9]+ r [0-9A-Z]+ (\. [0-9A-Z]+)? ;
<scaledNumber>:		<decimalNumber> s [0-9]+ ;
<exponentNumber>:	(<decimalNumber> | <radixNumber>) e \-? [0-9]+ ;
<number>:			<decimalNumber> | <radixNumber> | <exponentNumber> | <scaledNumber> ;
<negativeNumber>:	\- <number> ;
<string>:				\'  [^\']* \' (\' [^\']* \')* ;
<name>:				[a-zA-Z] [a-zA-Z0-9]* ;
<keyword>:			<name> \: ;
<multikeyword>:		<name> \: (<name> \: )+ ;
<binarySymbol>:		[\~\!\@\%\&\*\-\+\=\\\|\?\/\>\<\,] [\~\!\@\%\&\*\-\+\=\\\|\?\/\>\<\,]* ;
<assignment>:		\: \= | \_ ;
<alternateKeyword>:	\: <name> \: (<name> \:)* ;
<whitespace>:		\s+ ;
<comment>:			\"" [^\""]* \"" ;
<character>:			\$ . ;
<period>:				\. ;
<variableAssignment>:	<name> \: \= ;
<rightBoxBrackets>:	];
<rightCurlyBrackets>:	};
<rightParentheses>:	\);
<colon>:				\:;
<semicolon>:			\;;
<anyChar>:			. ; # For VW literal arrays that handle #(;) -> #(#';');"