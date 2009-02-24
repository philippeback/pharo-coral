private
openWorkspaceLabeled: label withContents: contents
	| info |
	info := SHWorkspace new.
	info contents: contents.
	info openLabel: label