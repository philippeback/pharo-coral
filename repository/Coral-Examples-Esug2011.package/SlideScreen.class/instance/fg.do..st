displaying-appearance
fg: n do: aBlock
	stream << (Ansi fg: n).
	aBlock cull: self.
	stream << Ansi sgrReset