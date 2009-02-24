generated-comments
parserDefinitionComment

	"%id <name> <number> <negativeNumber> <binarySymbol> <period> <colon> <rightParentheses> <rightCurlyBrackets> <rightBoxBrackets> <string> <keyword> <multikeyword> <assignment> <character>;
%start Sequence MethodPattern Script;

Script:
								{#array}
|	Script ScriptStatement		{#add2:};

ClassMethod:
	<name> ""class"" "">>"" Method 	{#classDefinittionMethod:};

InstanceMethod:
	<name> "">>"" Method 			{#instanceDefinittionMethod:};
	
MethodDefinition:
	InstanceMethod		{#first:}
|	ClassMethod 		{#first:};

ScriptStatement:
	""["" Sequence ""]""	{#doitScript:}
|	MethodDefinition {#first:};

Method:
	MethodPattern ""["" Sequence ""]""						{#method:}
|	MethodPattern ""["" Pragmas Sequence	""]""		{#methodPragma:}
|	MethodPattern ""["" Pragmas Temporaries Pragmas Statements ""]"" {#methodPragmaTempsPragma:}
|	MethodPattern ""["" Temporaries Pragmas Statements ""]"" {#methodTempsPragma:};

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

Pragmas:
	""<"" PragmaMessage "">""							{#pragma:}
|	""<"" PragmaMessage error							{#pragmaEndMissing:}
|	""<"" error											{#pragmaMissing:}
|	Pragmas ""<"" PragmaMessage "">""					{#pragmas:}
|	Pragmas ""<"" PragmaMessage error				{#pragmaEndMissing:}
|	Pragmas ""<"" error								{#pragmaMissing:};

Sequence:
	Statements									{#sequence:}
|	Temporaries Statements						{#sequenceWithTemps:};

Temporaries:
	""||""											{#arrayAddToken:}
|	""|"" TemporaryVariables ""|""					{#secondAddToken:}
| 	""|"" TemporaryVariables error					{#verticalBarMissing:};

TemporaryVariables:
												{#array}
|	TemporaryVariables Variable				{#add:};

Statements:
												{#array}
|	StatementList <period>?						{#first:}
|	StatementList <period> ""^"" Expression <period>?	{#returnAdd:}
|	""^"" Expression <period>?						{#return:};

StatementList:
	Expression									{#firstIn:}
|	StatementList <period> Expression				{#add3:};

Block:
	""["" BlockArgs ""|"" Sequence <rightBoxBrackets>	{#blockWithArgs:}
|	""["" Sequence <rightBoxBrackets>				{#blockNoArgs:}
|	""["" BlockArgs <rightBoxBrackets>				{#blockArgs:}
|	""["" BlockArgs ""||"" TemporaryVariables ""|"" Statements <rightBoxBrackets> {#blockWithTemps:};

BlockArgs:
	<colon> Variable									{#secondIn:}
|	<colon>	error									{#argumentNameMissing:}
|	BlockArgs <colon> Variable						{#add3:}
|	BlockArgs <colon> error							{#argumentNameMissing:};

Expression:
	Assignment									{#first:}
|	Cascade										{#first:}
|	Primary									{#first:};

Primary:
	""("" Expression <rightParentheses>				{#secondWithParenthesis:}
|	Array										{#first:}
|	Block										{#first:}
|	Literal										{#first:}
|	Variable									{#first:};

Assignment:
	Variable <assignment> Expression				{#assignment:}
|	Variable <assignment> error					{#expressionMissing:};

Cascade:
	MessageSend								{#first:}
|	Cascade <semicolon> Message					{#cascade:}
|	Cascade <semicolon> error 					{#cascadeMMissing:};

MessageSend:
	KeywordMessageSend						{#first:}
|	BinaryMessageSend							{#first:}
|	UnaryMessageSend							{#first:};

Message:
	UnaryMessage								{#first:}
|	BinaryMessage								{#first:}
|	KeywordMessage							{#first:};

KeywordMessageSend:
	BinaryMessageSend KeywordMessage			{#messageSend:}
|	UnaryMessageSend KeywordMessage			{#messageSend:}
|	Primary KeywordMessage					{#messageSend:};

KeywordMessage:
	<keyword> KeywordArgument				{#messagePart:}
|	<keyword> error 							{#argumentMissing:}
|	KeywordMessage <keyword> KeywordArgument {#addMessagePart:}
|	KeywordMessage <keyword> error 			{#argumentMissing:};

KeywordArgument:
	BinaryMessageSend							{#first:}
|	UnaryMessageSend							{#first:}
|	Primary									{#first:};

BinaryMessageSend:
	BinaryMessageSend BinaryMessage			{#messageSend:}
|	UnaryMessageSend BinaryMessage			{#messageSend:}
|	Primary BinaryMessage						{#messageSend:};

BinaryMessage :
	<binarySymbol> BinaryArgument				{#messagePart:}
|	<binarySymbol> error 						{#argumentMissing:};
 
BinaryArgument:
	UnaryMessageSend							{#first:}
|	Primary									{#first:};

UnaryMessageSend :
	UnaryMessageSend UnaryMessage			{#messageSend:}
|	Primary UnaryMessage						{#messageSend:};

UnaryMessage :
	<name>										{#unaryMessage:};

Array:
	""{"" Statements <rightCurlyBrackets>			{#array:};

Variable:
	<name>										{#variable:};

Literal:
	""true""										{#litTrue:}
|	""false""										{#litFalse:}
|	""nil""										{#litNil:}
|	<number>									{#litNumber:}
|	<negativeNumber>							{#litNumber:} 
|	<character>									{#litChar:}
|	<string>										{#litString:}
|	""#"" <string>									{#litStringSymbol:}
|	""#"" <name>									{#litSymbol:}
|	""#"" <binarySymbol>							{#litSymbol:}
|	""#"" <keyword>								{#litSymbol:}
|	""#"" <multikeyword>							{#litSymbol:}
|	""#"" <alternateKeyword>						{#litSymbol:}
|	""#"" ""["" ByteArray <rightBoxBrackets>			{#litArray:}
|	""#"" ""("" LiteralArray <rightParentheses>		{#litArray:}
|	""#:""											{#litString:};

ByteArray:
												{#byteStream}
|	ByteArray <number>							{#byteStreamPut:};

LiteralArray:
												{#stream}
|	LiteralArray ArrayLiteral					{#streamPut:};

ArrayLiteral:
	Literal										{#value:}
|	<name>										{#valueSymbol:}
|	<binarySymbol>								{#valueSymbol:}
|	<keyword>									{#valueSymbol:}
|	<multikeyword>								{#valueSymbol:}
|	<alternateKeyword>							{#valueSymbol:}
|	""("" LiteralArray <rightParentheses>			{#contents2:}
|	""["" ByteArray <rightBoxBrackets>				{#contents2:}
|	<anyChar>									{#valueSymbol:};

PragmaMessage:
	Apicall										{#messagePragma:}
| 	Primitive 									{#messagePragma:} 
|	MessagePragma 								{#messagePragma:};

MessagePragma:
	KeyWordMessagePragma						{#pragmaMessage:}
|	BinaryMessagePragma						{#pragmaMessage:}
|	UnaryMessage 								{#pragmaUnaryMessage:};
									
BinaryMessagePragma:
	<binarySymbol> PrimaryPragma				{#messagePart:}
|	<binarySymbol> error 						{#argumentMissing:};
										
KeyWordMessagePragma:
	<keyword> PrimaryPragma					{#messagePart:}
|	<keyword> error 							{#literalMissing:}
|	KeywordMessage <keyword> PrimaryPragma	{#addMessagePart:}
|	KeywordMessage <keyword> error 			{#literalMissing:};

PrimaryPragma:
	Array										{#first:}
|	Block										{#first:}
|	Literal										{#first:}
|	Variable									{#first:};

Apicall:
	TypeCall ExternalType IndexName ""("" ParameterApicall <rightParentheses>	{#externalCall:}
|	TypeCall ExternalType IndexName ""("" ParameterApicall <rightParentheses> ""module:"" <string>	{#externalModuleCall:};

IndexName:
	<string>										{#externalFunction:}
|	<number>									{#externalIndex:};

TypeCall:
	""apicall:""									{#callConvention:}
|	""cdecl:""										{#callConvention:};

ParameterApicall:
	ExternalType 								{#parameterExtCall:}
|	ParameterApicall ExternalType 				{#parametersExtCall:};

ExternalType:
	<name>										{#externalType:}	
|	<name> ""*""									{#externalTypePointer:};

Primitive:
	""primitive:"" <string>							{#primitiveString:}
|	""primitive:"" <number>						{#primitiveNumber:}
|	""primitive:"" error 							{#primitiveArgMissing:}
|	""primitive:"" <string> ""module:"" <string>		{#primitiveModule:}
|	""primitive:"" <string> ""module:"" error 			{#moduleArgMissing:};"