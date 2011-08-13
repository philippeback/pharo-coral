private
openWorkspaceLabeled: label withContents: contents
	| info |
	info := Workspace new.
	info contents: contents.
	info openLabel: label