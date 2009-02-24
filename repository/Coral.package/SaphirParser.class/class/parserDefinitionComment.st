generated-comments
parserDefinitionComment

	"%id <name> <number> <negativeNumber> <binarySymbol> <period>;
%start MethodPattern;

SequenceScript:
	ScriptList									{#first:};
			
Sequence:
	Statements									{#sequence:}
|	Temporaries Statements						{#sequenceWithTemps:};
						

MethodPattern:
	<name>										{#unaryMessage:}
|	<binarySymbol> Variable						{#messagePart:}
|	KeywordMethodPattern						{#first:};

							
KeywordMethodPattern:
	<keyword> Variable							{#messagePart:}
|	KeywordMethodPattern <keyword> Variable	{#addMessagePart:};

Pragmas:
	""<"" PragmaMessage "">""						{#pragma:}
|	Pragmas ""<"" PragmaMessage "">""				{#pragmas:};
							
MethodCore:
	Sequence									{#method:}
|	Pragmas Sequence							{#methodPragma:}
|	Pragmas Temporaries Pragmas Statements	{#methodPragmaTempsPragma:}
|	Temporaries Pragmas Statements				{#methodTempsPragma:};
							
ScriptMethodDeclaration:
	ScriptMethodCalssDeclaration					{#first:}
|	ScriptMethodInstDeclaration					{#first:}
|	ScriptMethod								{#first:};
														
ScriptMethod:
 	MethodPattern ""["" MethodCore ""]""				{#scriptMethod:};
		
ScriptMethodCalssDeclaration:
	Variable ""class"" MethodPattern ""["" MethodCore ""]""	{#declareClassMethod:};
		
ScriptMethodInstDeclaration:
	Variable MethodPattern ""["" MethodCore ""]""	{#declareMethod:};

Temporaries:
	""||""											{#array}
|	""|"" TemporaryVariables ""|""					{#second:};

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
	
ScriptList:
	ScriptMethodDeclaration						{#firstIn:}
|	ScriptList ScriptMethodDeclaration			{#add2:};	

Block:
	""["" BlockArgs ""|"" Sequence ""]""					{#blockWithArgs:}
|	""["" Sequence ""]""								{#blockNoArgs:}
|	""["" BlockArgs ""]""								{#blockArgs:}
|	""["" BlockArgs ""||"" TemporaryVariables ""|"" Statements ""]"" {#blockWithTemps:};

BlockArgs:
	"":"" Variable									{#secondIn:}
|	BlockArgs "":"" Variable						{#add3:};

Expression:
	Assignment									{#first:}
|	Cascade										{#first:}
|	Primary									{#first:};

Primary:
	""("" Expression "")""								{#second:}
|	Array										{#first:}
|	Block										{#first:}
|	Literal										{#first:}
|	Variable									{#first:};

Assignment:
	Variable <assignment> Expression				{#assignment:};

Cascade:
	MessageSend								{#first:}
|	Cascade "";"" Message							{#cascade:};

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
|	KeywordMessage <keyword> KeywordArgument {#addMessagePart:};

KeywordArgument:
	BinaryMessageSend							{#first:}
|	UnaryMessageSend							{#first:}
|	Primary									{#first:};

BinaryMessageSend:
	BinaryMessageSend BinaryMessage			{#messageSend:}
|	UnaryMessageSend BinaryMessage			{#messageSend:}
|	Primary BinaryMessage						{#messageSend:};

BinaryMessage :
	<binarySymbol> BinaryArgument				{#messagePart:};

BinaryArgument:
	UnaryMessageSend							{#first:}
|	Primary									{#first:};

UnaryMessageSend :
	UnaryMessageSend UnaryMessage			{#messageSend:}
|	Primary UnaryMessage						{#messageSend:};

UnaryMessage :
	<name>										{#unaryMessage:};

Array:
	""{"" Statements ""}""								{#array:};

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
|	""#"" ""["" ByteArray ""]""							{#litArray:}
|	""#"" ""("" LiteralArray "")""						{#litArray:}
|	""#:""								{#litString:};

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
|	""("" LiteralArray "")""							{#contents2:}
|	""["" ByteArray ""]""							{#contents2:}
|	<anyChar>									{#valueSymbol:};

PragmaMessage:
	Apicall										{#messagePragma:}
| 	Primitive 									{#messagePragma:} 
|	MessagePragma 								{#messagePragma:};

MessagePragma:
	KeyWordMessagePragma						{#pragmaKeyWordMessage:}
|	UnaryMessage 								{#pragmaUnaryMessage:};
										
KeyWordMessagePragma:
	<keyword> PrimaryPragma					{#messagePart:}
|	KeywordMessage <keyword> PrimaryPragma	{#addMessagePart:};

PrimaryPragma:
	Array										{#first:}
|	Block										{#first:}
|	Literal										{#first:}
|	Variable									{#first:};

Apicall:
	TypeCall ExternalType IndexName ""("" ParameterApicall "")""					{#externalCall:}
|	TypeCall ExternalType IndexName ""("" ParameterApicall "")"" ""module:"" <string>	{#externalModuleCall:};

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
|	""primitive:"" <string> ""module:"" <string>		{#primitiveModule:};"