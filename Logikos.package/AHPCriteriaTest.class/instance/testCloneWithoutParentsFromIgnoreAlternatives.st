testing
testCloneWithoutParentsFromIgnoreAlternatives
	| strategy original copy |
	strategy := NormalizedDifferenceSJS new.
	original := AHPCriteria named: 'original'.
	original smartJudgementStrategy: strategy.
	copy := AHPCriteria named: 'copy'.
	copy cloneWithoutParentsFrom: original ignoreAlternatives: false.
	self
		assert: copy smartJudgementStrategy class
		equals: NormalizedDifferenceSJS