as yet unclassified
sgr: sgrParameterString
	^ (String with: Character escape with: $[) ,
		sgrParameterString ,
		'm'