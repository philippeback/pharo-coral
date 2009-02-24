private
info
	| info |
	info := SHWorkspace new.
	info contents: self readMe.
	info openLabel: 'READ ME'