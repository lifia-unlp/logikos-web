callbacks
smartJudgeWithNumberDifferenceToMinSJSSmallerIsBetter
	| sjs |
	sjs := NormalizedDifferenceSJS
		property: self parent selectedLeafNode name..
	sjs largerIsBetter: false.
	sjs smartJudge: self parent selectedLeafNode