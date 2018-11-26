callbacks
smartJudgeWithNumberDifferenceToMinSJSSmallerIsBetter
	| sjs |
	sjs := NumberDifferenceToMinSJS
		valueBlock: [ :anObject | (anObject at: self parent selectedLeafNode name ifAbsent: [ nil ]) trimBoth asNumber ].
	sjs largerIsBetter: false.
	sjs smartJudge: self parent selectedLeafNode