callbacks
smartJudgeWithNumberDifferenceToMinSJSLargerIsBetter
	| sjs |
	sjs := NormalizedDifferenceSJS
		property: self parent selectedLeafNode name.
	sjs largerIsBetter: true.
	sjs smartJudge: self parent selectedLeafNode