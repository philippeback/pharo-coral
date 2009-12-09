comment
faq
	^ '"Q How does the image know how to interpret scripts?
A ScriptInterpreter class>>initialize registers itself as a startup class

Q Why is CoralLoader in a separate package?
A So it doesn''t try to reload itself when it loads Coral.
"'