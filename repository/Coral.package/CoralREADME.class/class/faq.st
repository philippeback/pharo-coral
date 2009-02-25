comment
faq
	^ '"Q How does the image know how to interpret scripts?
A ScriptInterpreter class>>initialize registers itself as a startup class

Q Why can''t SmaCC load in the Coral/Saphir parser?
A Because it is an RBParser, not a SmaCCParser
"'