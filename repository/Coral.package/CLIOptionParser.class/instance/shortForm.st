accessing
shortForm
	"Terse, clusterable form (dash-character)"
	^ short ifNotNil: [ '-' copyWith: short ]