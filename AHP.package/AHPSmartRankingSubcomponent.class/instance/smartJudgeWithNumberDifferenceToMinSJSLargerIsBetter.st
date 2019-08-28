callbacks
smartJudgeWithNumberDifferenceToMinSJSLargerIsBetter
	| sjs |
	sjs := NormalizedDifferenceSJS
		valueBlock: [ :anObject | (anObject at: self parent selectedLeafNode name ifAbsent: [ nil ]) trimBoth asNumber ].
	sjs largerIsBetter: true.
	sjs smartJudge: self parent selectedLeafNode